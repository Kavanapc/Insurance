FROM openjdk
ADD /var/lib/jenkins/workspace/Insurance_project/target/*.jar docker.jar
ENTRYPOINT ["java","-jar","docker.jar]
