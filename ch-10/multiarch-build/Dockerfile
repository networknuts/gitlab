FROM --platform=$TARGETPLATFORM nginx:1.27-alpine

# Copy custom NGINX configuration or static files
COPY nginx.conf /etc/nginx/nginx.conf
COPY html/ /usr/share/nginx/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

