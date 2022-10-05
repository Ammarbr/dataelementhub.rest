FROM openjdk:15-jdk-alpine
EXPOSE 8090
RUN chmod +x ./start.sh
RUN addgroup -S dehub && adduser -S dehub -G dehub
USER dehub:dehub
ARG JAR_FILE=target/dehub-rest-1.3.0-SNAPSHOT.jar
COPY ${JAR_FILE} /opt/app.jar
