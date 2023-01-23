FROM openjdk:17-jdk-alpine
COPY build/libs/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]



#FROM adoptopenjdk/openjdk11-openj9:jdk-11.0.10_9_openj9-0.24.0-slim
#VOLUME /tmp
#COPY build/libs/app.jar app.jar
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Duser.country=KR","-Duser.language=ko","-Djava.awt.headless=true","-jar","/app.jar"]
##ENTRYPOINT exec java $JAVA_OPTS -server -Djava.security.egd=file:/dev/./urandom -Duser.country=KR -Duser.language=ko -Duser.timezone=Asia/Seoul -jar /app.jar