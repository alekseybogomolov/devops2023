# Используем официальный образ PostgreSQL с Docker Hub
FROM postgres:latest

# Копирование скрипта инициализации
COPY init.sql /docker-entrypoint-initdb.d/

# Открываем порт 5432
EXPOSE 5432