# 1. Use OpenJDK 8
FROM openjdk:8-jdk

# 2. Install required tools
RUN apt-get update && \
    apt-get install -y curl unzip ant && \
    curl -L -o glassfish.zip https://ftp.osuosl.org/pub/eclipse/glassfish/glassfish-5.1.0.zip && \
    unzip glassfish.zip -d /opt && \
    rm glassfish.zip

# 3. Set environment variables
ENV GLASSFISH_HOME=/opt/glassfish5
ENV PATH="$PATH:$GLASSFISH_HOME/bin"

# 4. Set working directory
WORKDIR /app

# 5. Copy project files
COPY . /app

# 6. Build WAR with Ant
RUN ant

# 7. Deploy WAR
RUN cp dist/*.war $GLASSFISH_HOME/glassfish/domains/domain1/autodeploy/

# 8. Expose default port
EXPOSE 8080

# 9. Start GlassFish
CMD ["sh", "/opt/glassfish5/bin/asadmin", "start-domain", "-v"]
