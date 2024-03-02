# Trying to get alpine + brew on MacOS is not easy, just build this
FROM alpine:3.19.1

# libc-dev required for building dependency pyahocorasick
RUN apk upgrade --no-cache --update && apk add gcc git libc-dev

# python3-dev required for building dependency pyahocorasick
RUN apk add python3 python3-dev py3-pip

RUN git clone https://github.com/Yelp/detect-secrets

RUN cd /detect-secrets && pip3 install -r requirements-dev.txt --break-system-packages

WORKDIR /app

RUN printf "#!/bin/sh \
    \ncd /detect-secrets \
    \npython -m detect_secrets -C /app \$1" > /commands.sh

ENTRYPOINT ["sh", "/commands.sh"]
