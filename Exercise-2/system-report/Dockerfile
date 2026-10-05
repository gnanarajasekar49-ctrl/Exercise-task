# Use Alpine Linux as a lightweight base image
FROM alpine:latest

# Set working directory
WORKDIR /app

# Copy the report script into the container
COPY report.sh /app/report.sh

# Grant execute permission
RUN chmod +x /app/report.sh

# Default command: run the report script
CMD ["/app/report.sh"]
