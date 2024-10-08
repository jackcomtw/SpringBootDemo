FROM openjdk:11-jre
RUN groupadd -r spring && useradd -r spring -g spring
USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
