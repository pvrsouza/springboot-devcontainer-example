# Imagem base com Java 17
FROM openjdk:17-jdk-alpine

# Diretório de trabalho
WORKDIR /app

# Copiar o arquivo JAR da aplicação para o contêiner
COPY target/springboot-devcontainer-example-0.0.1-SNAPSHOT.jar springboot-devcontainer-example-0.0.1-SNAPSHOT.jar

# Copiar o arquivo de configuração do Maven para o contêiner
COPY maven /root/.m2/

# Expor a porta da aplicação Spring Boot
EXPOSE 8080

# Comando para executar a aplicação Spring Boot
CMD ["java", "-jar", "springboot-devcontainer-example-0.0.1-SNAPSHOT.jar"]
