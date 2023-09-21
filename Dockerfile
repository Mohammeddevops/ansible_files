# Use a base image with a JRE (Java Runtime Environment) suitable for your Spring Boot version
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Spring Boot application .war file into the container
COPY ./docker_assignment-0.0.1-SNAPSHOT.war app.war

# Expose the port your Spring Boot application listens on (if applicable)
EXPOSE 8080

# Specify the command to run your Spring Boot application when the container starts
CMD ["java", "-jar", "app.war"]
 
