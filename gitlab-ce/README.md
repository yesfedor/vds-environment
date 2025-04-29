# Настройка Nginx Proxy Manager
Предполагая, что у вас уже установлен Nginx Proxy Manager, добавьте в него прокси для GitLab:

Добавьте новый Proxy Host:
- Domain Names
- Scheme: http
- Forward Hostname/IP: gitlab-ce (или IP вашего Docker хоста, если NPM не в той же сети)
- Forward Port: 8190
- Включите SSL и получите сертификат Let's Encrypt

# Настройка SSH
Для работы SSH через порт 8192:

1. Отредактируйте файл `/vds-environment/gitlab-ce/config/gitlab.rb` (создастся после первого запуска):
    ```ruby
    gitlab_rails['gitlab_shell_ssh_port'] = 8192
    ```

2. На хосте добавьте в /etc/ssh/sshd_config:

    ```
    Port 22
    Port 8192
    ```
И перезапустите SSH: `sudo systemctl restart ssh`

# Важные заметки
Убедитесь, что порты 8190-8192 открыты в фаерволе:

```bash
sudo ufw allow 8190/tcp
sudo ufw allow 8191/tcp
sudo ufw allow 8192/tcp
```

# Обновление GitLab
```bash
cd vds-environment/gitlab-ce
docker-compose pull
docker-compose up -d
docker image prune -f
```
