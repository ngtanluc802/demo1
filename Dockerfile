# ===== STAGE 1: Build =====
FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app

# Copy pom.xml và tải dependencies trước (cache layer)
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy source code và build
COPY src ./src
RUN mvn clean package -DskipTests -B

# ===== STAGE 2: Run =====
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app

# Tạo user không phải root để bảo mật
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Copy JAR từ stage build
COPY --from=build /app/target/demo1-0.0.1-SNAPSHOT.jar app.jar

# Đổi owner
RUN chown appuser:appgroup app.jar
USER appuser

# Expose port Spring Boot mặc định
EXPOSE 8080

# Khởi chạy ứng dụng
ENTRYPOINT ["java", "-jar", "app.jar"]
