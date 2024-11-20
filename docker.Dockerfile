FROM alpine

RUN apk add docker docker-credential-ecr-login && \
 mkdir -p /root/.docker && \
 echo '{ "credsStore": "ecr-login" }' > /root/.docker/config.json
 