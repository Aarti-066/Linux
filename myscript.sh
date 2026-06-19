#!/bin/bash
echo "========================="
echo "System Health Check"
echo "========================="

# Check disk space
DISK=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
if [ $DISK -gt 80 ]; then
    echo "WARNING: Disk is almost full! $DISK% used"
else
    echo "Disk is OK: $DISK% used"
fi

# Check memory
echo "Memory Status:"
free -h

echo "========================="
echo "Health Check Complete!"#!/bin/bash
echo "System Information Report"
echo "========================="
echo "Your username is: $(whoami)"
echo "Today's date is: $(date)"
echo "Your current location: $(pwd)"
echo "Disk space available:"
df -h
echo "Memory available:"
free -h
echo "========================="
echo "Report Complete!"#!/bin/bash
echo "Hello! I am Aarti"
echo "I am learning DevOps"
echo "Today is my Day 3"
