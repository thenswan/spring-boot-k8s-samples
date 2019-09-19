FROM openjdk:8-jre-alpine
ADD build/alpha.jar alpha.jar
EXPOSE 8081
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "alpha.jar"]