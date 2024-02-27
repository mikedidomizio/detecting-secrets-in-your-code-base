# Trying to get alpine + brew on MacOS is not easy, just build this
FROM alpine:3.19.1

RUN apk upgrade --no-cache --update && apk add bash git make

RUN git clone https://github.com/awslabs/git-secrets && cd git-secrets && make install

WORKDIR /app

RUN git init && git config --global user.email "you@example.com" && git config --global user.name "Your Name"

RUN git secrets --register-aws --global

# On running the container we add all files with git, which will then scan all files by `git secrets`
RUN printf "#!/bin/bash \n \
\n \
git add -A && git secrets \"\$1\"" > /app/commands.sh
RUN ["chmod", "+x", "/app/commands.sh"]
ENTRYPOINT ["/app/commands.sh"]

