FROM Openjdk
ADD /var/lib/jenkins/workspace/Insurance_project/target/insure-me-1.0.jar docker.jar
ENTRYPOINT ["java","-jar","docker.jar]
