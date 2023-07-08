FROM eclipse-temurin:17.0.7_7-jdk-jammy

WORKDIR /app
COPY ./target/demo-0.0.1-SNAPSHOT.jar /app

EXPOSE 8080

CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]