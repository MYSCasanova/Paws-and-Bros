# 1. Use OpenJDK as base
FROM openjdk:8-jdk

# 2. Download and extract GlassFish
RUN apt-get update && \
    apt-get install -y curl unzip && \
    curl -L -o glassfish.zip https://github.com/javaee/glassfish/releases/download/5.1.0/glassfish-5.1.0.zip && \
    unzip glassfish.zip -d /opt && \
    rm glassfish.zip

# 3. Set env vars
ENV GLASSFISH_HOME=/opt/glassfish5
ENV PATH=$PATH:$GLASSFISH_HOME/bin

# 4. Copy your pre-built WAR file
COPY dist/*.war $GLASSFISH_HOME/glassfish/domains/domain1/autodeploy/

# 5. Expose the port
EXPOSE 8080

# 6. Start GlassFish
CMD ["sh", "/opt/glassfish5/bin/asadmin", "start-domain", "-v"]
