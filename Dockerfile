# Use the official OpenJDK 17 image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the entire project directory to the container
COPY . /app

# Build the application using Maven
RUN ./mvnw clean package -DskipTests

# Expose the port on which your Spring Boot app runs (change if needed)
EXPOSE 8080

# Set the entry point to run the Spring Boot application
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "target/SpringBootRestAPlProject-0.0.1-SNAPSHOT.jar"]