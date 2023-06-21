FROM eclipse-temurin:17-jdk-focal

EXPOSE 8080
COPY target ./target
ARG JAR_FILE=target/netflix-eureka-and-zuul.jar
ADD ${JAR_FILE} netflix-eureka-and-zuul.jar
ENTRYPOINT ["java", "-jar", "/netflix-eureka-and-zuul.jar"]