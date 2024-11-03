# Stage 1: Build the application
FROM maven:3.8.4-openjdk-17 AS builder

# Đặt thư mục làm việc
WORKDIR /app

# Copy các file cần thiết để build ứng dụng
COPY springboot-app/pom.xml .
RUN mvn dependency:go-offline

# Copy source code
COPY springboot-app /app

# Build ứng dụng
RUN mvn clean package -DskipTests

# Stage 2: Run the application
FROM openjdk:17-jdk-slim

# Đặt thư mục làm việc
WORKDIR /app

# Copy file JAR từ build stage sang
COPY --from=builder /app/target/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
