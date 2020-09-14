#!/bin/sh

echo "Attempting to install Auto ($AUTO_VERSION)"

if [ "$AUTO_VERSION" = "latest" ]; then
  echo "Using latest"
  URL="https://github.com/intuit/auto/releases/latest/download/auto-linux.gz"
else
  echo "Specified version"
  URL="https://github.com/intuit/auto/releases/download/$AUTO_VERSION/auto-linux.gz"
fi

if wget -q "$URL" > /dev/null; then
  gunzip -k ./auto-linux.gz && \
  chmod +x ./auto-linux && \
  mv ./auto-linux /usr/local/bin/auto
else
  echo "Failed to download Auto binary: $URL"
  exit 1
fi
