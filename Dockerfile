FROM maven:3.8.5-jdk-17-slim AS build
WORKDIR /app
COPY . /app
RUN mvn clean package

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY . /app
ENV APP_ENV production
ENV APP_PORT 8080
ENV JAVA_OPTS "-Xms512m -Xmx1024m"
RUN javac Main.java
CMD ["java", "-Dapp.env=$APP_ENV", "-Djava.opts=$JAVA_OPTS", "Main"]
