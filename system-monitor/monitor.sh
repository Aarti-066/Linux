#!/bin/bash

echo "================================"
echo "   SYSTEM HEALTH MONITOR"
echo "   $(date)"
echo "================================"

# Check CPU
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d'%' -f1)
echo "CPU Usage: $CPU%"

# Check Memory
MEM=$(free | grep Mem | awk '{printf "%.0f", $3/$2 * 100}')
echo "Memory Usage: $MEM%"

# Check Disk
DISK=$(df -h / | awk 'NR==2 {print $5}')
echo "Disk Usage: $DISK"

# Check if services are running
echo ""
echo "--- Service Status ---"
if systemctl is-active --quiet docker; then
    echo "Docker: Running ✅"
else
    echo "Docker: Stopped ❌"
fi

echo "================================"
echo "Monitor check complete!"
echo "================================"
