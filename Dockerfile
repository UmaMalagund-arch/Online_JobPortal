# Use OpenJDK 17
FROM openjdk:17-jdk-slim

# Add a work directory
WORKDIR /app

# Copy the jar file into the container
COPY target/*.jar jobportal.jar

# Expose Spring Boot port
EXPOSE 8080

# Start the application
ENTRYPOINT ["java", "-jar", "jobportal.jar"]

