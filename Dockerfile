FROM  openjdk:21-jdk

ADD target/dockerconfig.jar dockerconfig.jar
ENTRYPOINT ["java","-jar","/dockerconfig.jar"]