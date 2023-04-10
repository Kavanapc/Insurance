FROM openjdk
COPY target/*.jar docker.jar
ENTRYPOINT ["java","-jar","docker.jar"]
