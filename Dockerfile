# 1. Use OpenJDK 8 as base image
FROM openjdk:8-jdk

# 2. Install dependencies: curl, unzip, ant
RUN apt-get update && \
    apt-get install -y curl unzip ant && \
    curl -L -o glassfish.zip https://www.eclipse.org/downloads/download.php?file=/ee4j/glassfish/glassfish-5.1.0.zip -J -O && \
    unzip glassfish-5.1.0.zip -d /opt && \
    rm glassfish-5.1.0.zip

# 3. Set environment variables
ENV GLASSFISH_HOME=/opt/glassfish5
ENV PATH="$PATH:$GLASSFISH_HOME/bin"

# 4. Set working directory in container
WORKDIR /app

# 5. Copy your project files into the image
COPY . /app

# 6. Build WAR using Ant
RUN ant

# 7. Deploy WAR file to GlassFish autodeploy
RUN cp dist/*.war $GLASSFISH_HOME/glassfish/domains/domain1/autodeploy/

# 8. Expose default GlassFish port
EXPOSE 8080

# 9. Start GlassFish domain
CMD ["sh", "/opt/glassfish5/bin/asadmin", "start-domain", "-v"]
