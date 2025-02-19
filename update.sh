#!/bin/bash

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "git is not installed. Please install it before proceeding."
    exit 1
fi

# Check if the repository is already cloned
if [ -d "EasyMap" ]; then
    # Update the repository
    echo "Updating EasyMap repository..."
    cd EasyMap
    git pull origin main
    cd ..
else
    # Clone the repository
    echo "Cloning EasyMap repository..."
    git clone https://github.com/KaliforniaGator/EasyMap.git
fi

# Update submodules
echo "Updating submodules..."
cd EasyMap
git submodule update --init --recursive
cd ..

# Update nmap (if installed)
if command -v nmap &> /dev/null; then
    echo "nmap is already installed. No update needed."
else
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
    fi
fi

echo "Update complete!"
