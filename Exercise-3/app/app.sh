#!/bin/sh

# ============================================================
# Training Application
# Reads config.txt and runs continuously
# ============================================================

CONFIG_FILE="/app/config.txt"

# Check config file exists
if [ ! -f "$CONFIG_FILE" ]; then
    echo "[ERROR] Configuration file not found: $CONFIG_FILE"
    exit 1
fi

# Read configuration values
APP_NAME=$(grep '^APP_NAME=' "$CONFIG_FILE" | cut -d'=' -f2)
ENVIRONMENT=$(grep '^ENVIRONMENT=' "$CONFIG_FILE" | cut -d'=' -f2)

echo "============================================================"
echo "  Application  : $APP_NAME"
echo "  Environment  : $ENVIRONMENT"
echo "  Started At   : $(date)"
echo "  Status       : Running"
echo "============================================================"

# Keep the container running continuously
COUNTER=1
while true; do
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] [$APP_NAME] [$ENVIRONMENT] Heartbeat #$COUNTER - Status: Running"
    COUNTER=$((COUNTER + 1))
    sleep 5
done
