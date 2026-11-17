FROM eclipse-temurin:21-jre

WORKDIR /app

# Copy the JAR already built by the Jenkins 'Build' stage
COPY target/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
