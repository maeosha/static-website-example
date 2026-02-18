FROM nginx:alpine

# Удаляем дефолтный конфиг
RUN rm -rf /usr/share/nginx/html/*

# Копируем сайт
COPY . /usr/share/nginx/html

# Открываем порт
EXPOSE 80

# Запуск nginx
CMD ["nginx", "-g", "daemon off;"]
