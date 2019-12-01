FROM maven:3.6.3-jdk-8-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app/
RUN mvn -f /home/app/pom.xml clean package

FROM openjdk:8-jre-alpine
COPY --from=build /home/app/target/order-service-1.0.0-SNAPSHOT.jar order-service.jar
EXPOSE 8002
ENTRYPOINT [ "java", "-jar", "/order-service.jar" ]
