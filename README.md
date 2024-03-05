# Detecting secrets in your code base

## Open source SAST tools

The following are open source tools for detecting secrets.
This repository contains multiple dockerfiles to allow you to easily test each.

In Jetbrains IDE, these code blocks can be successfully run from within the IDE.

### [awslabs/git-secrets](https://github.com/awslabs/git-secrets)

#### Testing with Docker

```shell
docker build -t git-secrets:latest -f git-secrets.dockerfile .

docker run -v ${PWD}:/app git-secrets:latest [OPTIONS]

# ex.
docker run -v ${PWD}:/app git-secrets:latest --scan-history
```

### [gitleaks/gitleaks](https://github.com/gitleaks/gitleaks)

#### Testing with Docker

```shell
docker run -v ${PWD}:/path zricethezav/gitleaks:latest [COMMAND] [OPTIONS]

# ex.
docker run -v ${PWD}:/path zricethezav/gitleaks:latest detect --source="/path" -v
```

### [Yelp/detect-secrets](https://github.com/Yelp/detect-secrets)

#### Testing with Docker

```shell
docker build -t detect-secrets:latest -f detect-secrets.dockerfile .

docker run -v ${PWD}:/app detect-secrets:latest [COMMAND]

# ex.
docker run -v ${PWD}:/app -it detect-secrets:latest scan
```

### [trufflesecurity/trufflehog](https://github.com/trufflesecurity/trufflehog)

#### Testing with Docker

```shell
# for MacOS
docker run --platform linux/arm64 -v $PWD:/pwd trufflesecurity/trufflehog:latest filesystem /pwd
```
