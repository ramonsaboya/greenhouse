FROM maven:3.6.3-jdk-8-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app/
RUN mvn -f /home/app/pom.xml clean package

FROM openjdk:8-jre-alpine
COPY --from=build /home/app/target/order-complete-updater-1.0.0-SNAPSHOT.jar order-complete-updater.jar
EXPOSE 8005
ENTRYPOINT [ "java", "-jar", "/order-complete-updater.jar" ]
