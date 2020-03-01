#!/bin/sh

exec java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -agentlib:jdwp=transport=dt_socket,address=8000,server=y,suspend=n -jar "${HOME}/app.jar" "$@"
