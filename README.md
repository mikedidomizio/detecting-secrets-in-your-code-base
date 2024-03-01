

## awslabs/git-secrets

[repository](https://github.com/awslabs/git-secrets)

### Docker

```bash
docker build -t git-secrets:latest -f git-secrets.dockerfile .

docker run -v ${PWD}/git-secrets.js:/app/git-secrets.js git-secrets:latest --scan
```

## gitleaks/gitleaks

[repository](https://github.com/gitleaks/gitleaks)

### Docker

```bash
docker pull zricethezav/gitleaks:latest
docker run -v ${PWD}:/path zricethezav/gitleaks:latest protect --source="/path" -v
```
