# 1. Use OpenJDK 8 as base image
FROM openjdk:8-jdk

# 2. Install curl, unzip, and Ant
RUN apt-get update && \
    apt-get install -y curl unzip ant && \
    curl -L -o glassfish.zip https://download.eclipse.org/ee4j/glassfish/glassfish-5.1.0.zip && \
    unzip glassfish.zip -d /opt && \
    rm glassfish.zip

# 3. Set environment variables
ENV GLASSFISH_HOME=/opt/glassfish5
ENV PATH=$PATH:$GLASSFISH_HOME/bin

# 4. Set working directory
WORKDIR /app

# 5. Copy project files
COPY . .

# 6. Build using Ant (your build.xml is here)
RUN ant

# 7. Deploy WAR to GlassFish autodeploy
RUN cp dist/*.war $GLASSFISH_HOME/glassfish/domains/domain1/autodeploy/

# 8. Expose port
EXPOSE 8080

# 9. Start GlassFish on container startup
CMD ["/opt/glassfish5/bin/asadmin", "start-domain", "-v"]
