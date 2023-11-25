
FROM alpine:latest

# Установка Nginx
RUN apk --no-cache add nginx

# Копирование конфигурационного файла Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Открываем порт 80
EXPOSE 80

# Команда для запуска Nginx в фоновом режиме
CMD ["nginx", "-g", "daemon off;"]