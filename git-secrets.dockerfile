# Trying to get alpine + brew on MacOS is not easy, just build this
FROM alpine:3.19.1

RUN apk upgrade --no-cache --update && apk add bash git make

RUN git clone https://github.com/awslabs/git-secrets && cd git-secrets && make install

WORKDIR /app

ENTRYPOINT ["git", "secrets"]
