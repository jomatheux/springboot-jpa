FROM openjdk:17-jdk-slim

# Diretório de trabalho no container
WORKDIR /app

# Copiar o JAR gerado pela aplicação para o container
COPY target/java-spring-project-0.0.1-SNAPSHOT.jar app.jar

# Expor a porta 8080
EXPOSE 8080

# Comando para rodar o JAR
ENTRYPOINT ["java", "-jar", "app.jar"]