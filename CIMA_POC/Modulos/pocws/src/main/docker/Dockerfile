FROM openjdk:8-jre-alpine

ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS \   
    JAVA_OPTS=""

# Add user to run our application so that it doesn't need to run as root
RUN adduser -D -s /bin/sh -u 1001 cima
WORKDIR /home/cima

ADD /src/main/docker/entrypoint.sh entrypoint.sh
RUN chmod 755 entrypoint.sh && chown cima:cima entrypoint.sh
USER cima

ENTRYPOINT ["./entrypoint.sh"]

EXPOSE 9080 5701/udp

ADD /target/*.jar app.jar