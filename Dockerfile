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

# 4. Set working directory in container
WORKDIR /app

# 5. Copy all project files into the image
COPY . /app

# 6. Build the WAR file using Ant
RUN ant

# 7. Deploy WAR to GlassFish
RUN cp dist/*.war $GLASSFISH_HOME/glassfish/domains/domain1/autodeploy/

# 8. Expose port
EXPOSE 8080

# 9. Start GlassFish server when the container runs
CMD ["sh", "/opt/glassfish5/bin/asadmin", "start-domain", "-v"]
