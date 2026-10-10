#!/usr/bin/env bash
set -euo pipefail

echo "Current user: $(whoami)"
echo "Effective UID: $(id -u)"
echo "Hostname: $(hostname)"
echo "Kernel release: $(uname -r)"
echo "Date: $(date -Iseconds)"

echo
echo "Disk usage:"
df -h

echo
echo "Memory usage:"
free -h

echo
echo "Docker daemon status:"
if docker info >/dev/null 2>&1; then
    echo "Docker daemon is running"
else
    echo "Docker daemon is not running"
fi
