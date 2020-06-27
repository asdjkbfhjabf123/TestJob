FROM openjdk:8
EXPOSE 9090
ADD target/dockerfile.jar dockerfile.jar
ENTRYPOINT ["java", "-jar", "/dockerfile.jar"]