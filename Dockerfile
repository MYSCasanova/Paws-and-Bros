# 1. Use Debian-based OpenJDK image that supports apt-get
FROM openjdk:8-jdk-buster

# 2. Install curl, unzip, and ant
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

# 5. Copy your project files
COPY . .

# 6. Build the WAR file using Ant
RUN ant

# 7. Deploy WAR to GlassFish autodeploy folder
RUN cp dist/*.war $GLASSFISH_HOME/glassfish/domains/domain1/autodeploy/

# 8. Expose default GlassFish HTTP port
EXPOSE 8080

# 9. Start GlassFish when the container runs
CMD ["/opt/glassfish5/bin/asadmin", "start-domain", "-v"]
