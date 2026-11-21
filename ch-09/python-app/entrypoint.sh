#!/bin/bash
set -e

# Run the PyInstaller executable in the background
# Replace ./app with the exact binary name inside app.zip
/app &

# Start Nginx in the foreground
nginx -g "daemon off;"

