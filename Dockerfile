FROM maven:3.8.4-openjdk-17 as BUILD
ENV APP_HOME=/usr/src/app
RUN mvn --version

FROM openjdk:17-jdk-slim

COPY --from=build /target/DogsManagementSystem-0.0.1-SNAPSHOT.jar DogsManagementSystem.jar
CMD ["java", "-jar", "DogsManagementSystem.jar"]
