# Use an official maven runtime as a parent image
FROM maven:3.8.2-jdk-11 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn package -DskipTests

FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=build /app/target/comp367-welcome-web/*.jar /app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
