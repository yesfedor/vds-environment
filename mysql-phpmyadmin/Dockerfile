FROM mysql:latest

# Дополнительные параметры конфигурации MySQL
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=dbname
ENV MYSQL_USER=dbuser
ENV MYSQL_PASSWORD=dbpassword

# Перемещение дополнительного файла конфигурации MySQL внутрь контейнера
COPY my.cnf /etc/mysql/my.cnf
