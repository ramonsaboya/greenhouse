FROM openjdk:8-jdk
COPY target/restaurant-service-1.0.0-SNAPSHOT.jar restaurant-service.jar
EXPOSE 8001
ENTRYPOINT [ "java", "-jar", "/restaurant-service.jar" ]
