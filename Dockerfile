FROM openjdk:17.0.2
ARG JAR_FILE=target/test-docker-0.0.1-SNAPSHOT.jar
WORKDIR /opt/app
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","app.jar"]