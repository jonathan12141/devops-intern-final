#!/usr/bin/env bash
set -euo pipefail

URL="${1:-http://localhost:8080}"

STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

if [ "$STATUS_CODE" = "200" ]; then
    echo "Health check passed: $URL returned HTTP 200"
    exit 0
else
    echo "Health check failed: $URL returned HTTP $STATUS_CODE"
    exit 1
fi
