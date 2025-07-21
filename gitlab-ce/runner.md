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
  --url "https://{GITLAB_INSTANCE}/" \
  --token "{TOKEN}"
```
