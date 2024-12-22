# Etapa de construção do JAR
FROM maven:3.8-openjdk-17 AS builder

# Diretório de trabalho no container
WORKDIR /app

# Copiar os arquivos do projeto para o container
COPY . .

# Rodar o build do Maven
RUN mvn clean package -DskipTests

# Etapa final para execução
FROM openjdk:17-jdk-slim-buster

# Diretório de trabalho no container
WORKDIR /app

# Copiar o JAR gerado da etapa anterior
COPY --from=builder /app/target/*.jar app.jar

# Expor a porta 8080
EXPOSE 8080

# Comando para rodar o JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
