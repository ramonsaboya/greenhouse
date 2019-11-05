FROM openjdk:8-jdk-alpine
COPY target/hystrix-dashboard-1.0.0-SNAPSHOT.jar hystrix-dashboard.jar
EXPOSE 7979
ENTRYPOINT [ "java", "-jar", "/hystrix-dashboard.jar" ]
