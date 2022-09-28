FROM openjdk:18-jdk-alpine
EXPOSE 8090
RUN apk add sudo
RUN addgroup -S dehub && adduser -S dehub -G dehub
RUN mkdir /var/exports
RUN chown dehub:dehub /var/exports
USER dehub:dehub
