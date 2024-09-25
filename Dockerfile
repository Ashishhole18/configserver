FROM openjdk:17
MAINTAINER Ashish hole "ash@gmail.com"
WORKDIR /app
COPY target/server-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8088
ENTRYPOINT ["java","-jar", "app/jar"]