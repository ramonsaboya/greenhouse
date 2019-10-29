FROM openjdk:8-jdk-alpine
COPY target/order-complete-updater-1.0.0-SNAPSHOT.jar order-complete-updater.jar
EXPOSE 8005
ENTRYPOINT [ "java", "-jar", "/order-complete-updater.jar" ]
