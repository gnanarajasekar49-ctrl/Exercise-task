#!/bin/sh

# ============================================================
# System Report Script
# Usage: ./report.sh [server_name]
# ============================================================

SERVER_NAME="${1:-$(hostname)}"

echo "============================================================"
echo "              LINUX SYSTEM REPORT"
echo "============================================================"
echo "  Server Name  : $SERVER_NAME"
echo "  Hostname     : $(hostname)"
echo "  Date & Time  : $(date)"
echo "  Current User : $(whoami)"
echo "------------------------------------------------------------"
echo "  OS / Kernel Info:"
uname -a
echo "------------------------------------------------------------"
echo "  Disk Usage:"
df -h
echo "------------------------------------------------------------"
echo "  Memory Information:"
free -h 2>/dev/null || cat /proc/meminfo | grep -E "MemTotal|MemFree|MemAvailable"
echo "------------------------------------------------------------"
echo "  Running Processes (Top 10):"
ps aux 2>/dev/null | head -11 || ps | head -11
echo "============================================================"
echo "              END OF REPORT"
echo "============================================================"
