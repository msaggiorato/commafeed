#!/bin/bash
echo "Installing packages"
apk add --no-cache bash wget

COMMAFEED_VERSION=2.4.0
DOWNLOAD_URL="https://github.com/Athou/commafeed/releases/download/${COMMAFEED_VERSION}/commafeed.jar"

echo "Downloading ${DOWNLOAD_URL} to $(pwd)"
wget "$DOWNLOAD_URL" --progress bar:force:noscroll --output-document commafeed.jar