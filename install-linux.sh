#!/bin/sh

if ($AUTO_VERSION == "latest") 
wget -q "https://github.com/intuit/auto/releases/latest/download/auto-linux.gz"
else
wget -q "https://github.com/intuit/auto/releases/download/$AUTO_VERSION/auto-linux.gz"
fi

gunzip -k ./auto-linux.gz
chmod +x ./auto-linux
mv ./auto-linux /usr/bin/auto
