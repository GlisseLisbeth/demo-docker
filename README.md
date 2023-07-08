# demo-docker
App Demo with Docker and Spring Boot Java 17

## Prerequisites
Generate .jar with spring-boot:run or mvn clean package

## Dockerfile
<code>
# Fetching latest version of Java
FROM eclipse-temurin:17.0.7_7-jdk-jammy
</code>
<code>
# Setting up work directory
WORKDIR /app
</code>
<code>
# Copy the jar file into our app
COPY ./target/demo-0.0.1-SNAPSHOT.jar /app
</code>
<code>
# Exposing port 8080
EXPOSE 8080
</code>
<code>
# Starting the application
CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]
</code>

## Docker command 

<code>
# Create a docker image by using the docker build command
docker build -t demo-docker .
docker images
</code>
<code>
# Create a docker container by running
docker run -it  -p 8080:8080 demo-docker
</code>
<code>
# Verify whether the container has been created successfully by running
docker ps -a
</code>
<code>
# To turn off your Docker container, run
docker stop [container-id]
</code>
