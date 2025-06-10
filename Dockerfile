FROM openjdk:8-jdk-buster

# Install curl, unzip, and Ant
RUN apt-get update && \
    apt-get install -y curl unzip ant && \
    curl -L -o glassfish.zip https://repo1.maven.org/maven2/org/glassfish/main/distributions/glassfish/5.1.0/glassfish-5.1.0.zip && \
    unzip glassfish.zip -d /opt && \
    rm glassfish.zip

ENV GLASSFISH_HOME=/opt/glassfish5
ENV PATH=$PATH:$GLASSFISH_HOME/bin

WORKDIR /app
COPY . .

RUN ant

RUN cp dist/*.war $GLASSFISH_HOME/glassfish/domains/domain1/autodeploy/

EXPOSE 8080

CMD ["/opt/glassfish5/bin/asadmin", "start-domain", "-v"]
