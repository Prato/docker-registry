# https://docs.docker.com/registry/deploying/
FROM alpine

RUN apk --no-cache add \
    bash \
    apache2-utils \

    && mkdir -p /var/docker/registry \
                /var/docker/data

COPY etc /etc
COPY bin /bin
