FROM openjdk:18-jdk-alpine
EXPOSE 8090
RUN apk add sudo
RUN addgroup -S dehub && adduser -S dehub -G dehub
RUN mkdir /var/exports
RUN chown dehub:dehub /var/exports
USER dehub:dehub
#ARG JAR_FILE=target/dehub-rest-?.?.?.jar
ARG JAR_FILE=target/dehub-rest-?.?.?-SNAPSHOT.jar
COPY ${JAR_FILE} /opt/app.jar
