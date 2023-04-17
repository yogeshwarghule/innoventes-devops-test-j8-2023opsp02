# Start with a base image that has Java installed
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot application JAR file into the container
COPY target/my-spring-boot-app.jar /app/my-spring-boot-app.jar

# Expose ports 8080 and 8100
EXPOSE 8080 8100

# Set the command that runs when the container starts
CMD ["java", "-jar", "my-spring-boot-app.jar"]
