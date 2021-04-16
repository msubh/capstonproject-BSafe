FROM openjdk:8
EXPOSE 8080
ARG JAR_FILE=complete/target/*.jar
COPY ${JAR_FILE} docker-spring-boot.jar
ENTRYPOINT ["java","-jar","docker-spring-boot.jar"]
