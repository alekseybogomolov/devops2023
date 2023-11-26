# Используем официальный образ PostgreSQL с Docker Hub
FROM postgres:latest

# Копирование скрипта инициализации
COPY init-user-db.sh /docker-entrypoint-initdb.d/init-user-db.sh

# Открываем порт 5432
EXPOSE 5432
