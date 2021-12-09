FROM openjdk:11-jdk-slim
RUN mkdir -p /workspace
WORKDIR /workspace
COPY /target/*.jar app.jar
EXPOSE 8761
EXPOSE 443
ENTRYPOINT ["java","-jar","app.jar"]