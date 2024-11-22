# 基於官方 Nginx 映像
FROM nginx:latest

# 複製自定義的 index.html 到 Nginx 預設路徑
COPY index.html /usr/share/nginx/html/index.html
