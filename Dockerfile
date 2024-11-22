# 基於官方 Nginx 映像
FROM nginx:latest

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80