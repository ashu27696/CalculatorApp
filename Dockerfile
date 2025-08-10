FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY . .
RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests
CMD ["java", "-jar", "target/CalculatorApp-0.0.1-SNAPSHOT.jar"]


# ===================================================================================================================================================
# Stage 1: Build
# FROM eclipse-temurin:17-jdk-alpine AS build
# WORKDIR /app
# COPY . .
# RUN chmod +x mvnw
# RUN ./mvnw clean package -DskipTests
#
# # Stage 2: Run
# FROM eclipse-temurin:17-jdk-alpine
# WORKDIR /app
# COPY --from=build /app/target/*.jar app.jar
# CMD ["java", "-jar", "app.jar"]
# ===================================================================================================================================================