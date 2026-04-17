# Use Java 17 (important for Spring Boot)
FROM eclipse-temurin:21-jdk-alpine

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Build the project
RUN ./mvnw clean package -DskipTests

# Expose port (Render uses dynamic port)
EXPOSE 8080

# Run the jar file
CMD ["java", "-jar", "target/*.jar"]