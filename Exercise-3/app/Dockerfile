# Lightweight Linux base image
FROM alpine:latest

# Set working directory
WORKDIR /app

# Copy application files into the container
COPY app.sh /app/app.sh
COPY config.txt /app/config.txt

# Grant execute permission to the startup script
RUN chmod +x /app/app.sh

# Start the application when the container launches
CMD ["/app/app.sh"]
