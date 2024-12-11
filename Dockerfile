# Usamos la imagen base de Java 8
FROM openjdk:8-jdk-alpine

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos el archivo JAR de la aplicación (que se generará en el proceso de build)
COPY target/zuul-server-0.0.1-SNAPSHOT.jar /app/zuul-server.jar

# Exponemos el puerto donde correrá Zuul (puerto 8080 por defecto)
EXPOSE 8090

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "zuul-server.jar"]
