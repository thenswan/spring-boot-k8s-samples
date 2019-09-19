FROM openjdk:8-jre-alpine
ADD build/beta.jar beta.jar
EXPOSE 8082
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "beta.jar"]