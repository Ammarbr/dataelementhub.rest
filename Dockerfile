FROM openjdk:15-jdk-alpine
EXPOSE 8090
COPY docker/start.sh .
RUN chmod +x ./start.sh
RUN addgroup -S dehub && adduser -S dehub -G dehub
USER dehub:dehub
ARG JAR_FILE=target/dehub-rest-1.0.0.jar
COPY ${JAR_FILE} /opt/app.jar
ENTRYPOINT ["./start.sh"]
