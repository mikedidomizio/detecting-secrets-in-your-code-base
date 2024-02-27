

## awslabs/git-secrets

[repository](https://github.com/awslabs/git-secrets)

### Docker

```bash
docker build -t git-secrets:latest -f git-secrets.dockerfile .

docker run -v ${PWD}/git-secrets.js:/app/git-secrets.js git-secrets:latest --scan

```
