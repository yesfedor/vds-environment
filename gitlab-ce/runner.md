# Docs

https://docs.gitlab.com/runner/install/docker/

---

## 1

```shell
docker run -d --name gitlab-runner \
  --restart always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /srv/gitlab-runner/config:/etc/gitlab-runner \
  gitlab/gitlab-runner:latest
```

## 2

```shell
docker exec -it gitlab-runner \
gitlab-runner register \
  --non-interactive \
  --url "https://git.fiv.dev/" \
  --registration-token "glrt-dDoxCnU6MWHG3y0Tllec7-diBePn_YAQ.0w1inxryp" \
  --executor "docker" \
  --docker-image alpine:latest \
  --description "docker-runner" \
  --tag-list "docker,linux" \
  --run-untagged="true"
```
