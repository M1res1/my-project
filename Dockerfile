# Use lightweight JDK 8
FROM eclipse-temurin:8-jre-alpine

# Expose application port
EXPOSE 8080

# Create app directory
WORKDIR /usr/app

# Copy any JAR from build/libs into the image
COPY build/libs/*.jar app.jar

# Set the default command to run the JAR
ENTRYPOINT ["java","-jar","app.jar"]
