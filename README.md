

## awslabs/git-secrets

[repository](https://github.com/awslabs/git-secrets)

### Docker

```bash
docker build -t git-secrets:latest -f git-secrets.dockerfile .
docker run -v ${PWD}:/app git-secrets:latest --scan-history
```

## gitleaks/gitleaks

[repository](https://github.com/gitleaks/gitleaks)

### Docker

```bash
docker pull zricethezav/gitleaks:latest
docker run -v ${PWD}:/path zricethezav/gitleaks:latest detect --source="/path" -v
```
