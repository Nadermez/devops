# Utilisez l'image OpenJDK 11 depuis Docker Hub
FROM openjdk:8-jdk-alpine

# Exposez le port sur lequel votre application Spring Boot écoute (par exemple, le port 8080)
EXPOSE 8082

# Copiez le fichier JAR de votre application dans le conteneur
COPY target/DevOps_Project-1.1.jar DevOps_Project-1.1.jar

# Démarrez l'application Spring Boot
ENTRYPOINT ["java", "-jar", "DevOps_Project-1.1.jar"]
