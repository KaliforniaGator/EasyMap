#!/bin/bash

# Check if curl is installed
if ! command -v curl &> /dev/null; then
    echo "curl is not installed. Please install it before proceeding."
    exit 1
fi

# Check if nmap is installed
if ! command -v nmap &> /dev/null; then
    echo "nmap is not installed. Do you want to install it? (yes/no)"
    read -r response
    if [[ $response =~ ^yes$ ]]; then
        if command -v apt-get &> /dev/null; then
            sudo apt-get update && sudo apt-get install -y nmap
        elif command -v yum &> /dev/null; then
            sudo yum install -y nmap
        elif command -v brew &> /dev/null; then
            brew install nmap
        else
            echo "Unsupported package manager. Please install nmap manually."
            exit 1
        fi
    else
        echo "nmap is required for EasyMap to function. Please install it manually."
        exit 1
    fi
fi

# Update nmap
echo "Updating nmap..."
if command -v apt-get &> /dev/null; then
    sudo apt-get update && sudo apt-get install -y --only-upgrade nmap
elif command -v yum &> /dev/null; then
    sudo yum update -y nmap
elif command -v brew &> /dev/null; then
    brew upgrade nmap
else
    echo "Unsupported package manager. Please update nmap manually."
fi

# Download the latest EasyMap binary
echo "Downloading latest EasyMap binary..."
curl -LO https://github.com/KaliforniaGator/EasyMap/releases/latest/download/easymap

# Make the downloaded binary executable
echo "Making the downloaded binary executable..."
chmod +x easymap

# Replace the old EasyMap binary with the new one
echo "Replacing the old EasyMap binary with the new one..."
if [ -f "/usr/local/bin/easymap" ]; then
    sudo mv easymap /usr/local/bin/easymap
else
    sudo mv easymap /usr/local/bin/
fi

echo "Update complete!"
