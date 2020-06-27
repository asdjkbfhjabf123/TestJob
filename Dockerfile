FROM openjdk:8
EXPOSE 9090
ADD target/TestJob.jar TestJob.jar
ENTRYPOINT ["java", "-jar", "/TestJob.jar"]