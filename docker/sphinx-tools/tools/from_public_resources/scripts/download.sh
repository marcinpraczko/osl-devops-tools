#!/usr/bin/env bash

echo "======================================================================"
echo "Downloading files..."
echo "Load files from file: download.txt"
echo "Saving logs to file : download.log"
echo "======================================================================"

wget -c -i download.txt -o download.log

echo "Verifying SHA1 files..."
sha1sum -c sha1sum.txt
