FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends nginx \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy extracted PyInstaller files and ensure executable permissions
COPY extracted_app/ /app/
#COPY --from=downloader /extract/ /app/
RUN chmod -R +x /app/app

# Copy Nginx config and startup script
COPY nginx.conf /etc/nginx/nginx.conf
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80

CMD ["/entrypoint.sh"]

