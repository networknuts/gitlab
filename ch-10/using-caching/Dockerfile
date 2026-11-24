FROM node:20-alpine

# Install Nginx
RUN apk add --no-cache nginx

WORKDIR /usr/src/app

# 1. Copy dependency manifests first to leverage Docker layer caching
#COPY package*.json ./
COPY package.json package-lock.json ./
#RUN npm ci --only=production

RUN --mount=type=cache,target=/root/.npm \
    npm ci --omit=dev
# 2. Copy application code and Nginx config

COPY index.js ./
COPY nginx.conf /etc/nginx/http.d/default.conf

EXPOSE 80

# Start Nginx in the background and run the Node.js app
CMD ["sh", "-c", "nginx && npm start"]

