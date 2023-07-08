
# demo-docker
App Demo with Docker and Spring Boot Java 17

## Prerequisites
Generate .jar with spring-boot:run or mvn clean package

## Dockerfile
**Fetching latest version of Java**

    FROM eclipse-temurin:17.0.7_7-jdk-jammy

**Setting up work directory**

    WORKDIR /app

**Copy the jar file into our app**

    COPY ./target/demo-0.0.1-SNAPSHOT.jar /app

**Exposing port 8080**

    EXPOSE 8080

**Starting the application**

    CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]


## Docker command 
**Create a docker image by using the docker build command**

    docker build -t demo-docker .

    docker images

**Create a docker container by running**

    docker run -it  -p 8080:8080 demo-docker

**Verify whether the container has been created successfully by running**

    docker ps -a

**To turn off your Docker container, run**

    docker stop [container-id]

