FROM openjdk:15-jdk-alpine
VOLUME /tmp
EXPOSE 8090
RUN addgroup -S dehub && adduser -S dehub -G dehub
USER dehub:dehub
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar /app.jar"]
