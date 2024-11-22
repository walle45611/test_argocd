# 第一階段：構建前端應用
FROM node:20.17.0 AS builder

# 設置工作目錄
WORKDIR /app

# 複製專案文件
COPY package*.json ./
COPY . ./

# 安裝依賴並構建
RUN npm install && npm run build

# 第二階段：部署到 Nginx
FROM nginx:latest

# 複製構建文件到 Nginx 預設靜態資源目錄
COPY --from=builder /app/dist /usr/share/nginx/html

# 暴露 80 端口
EXPOSE 80

# 啟動 Nginx
CMD ["nginx", "-g", "daemon off;"]
