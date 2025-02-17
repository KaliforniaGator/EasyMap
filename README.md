# EasyMap
EasyMap is a simple nmap helper tool designed to make it easy to perform network scans using nmap. It provides a user-friendly interface for selecting scan options and executing nmap commands.

## Features
* Supports multiple scan types, including TCP SYN, UDP, TCP connect, ACK, TCP Null, TCP FIN, and TCP Xmas scans
* Allows users to specify custom ports and port ranges
* Supports OS detection and version detection
* Includes options for firewall/IDS evasion techniques
* Allows users to select scan speed, including paranoid, sneaky, polite, normal, aggressive, and insane speeds

## Usage
To use EasyMap, simply run the script and follow the prompts to select your scan options. The tool will then execute the corresponding nmap command and display the results.

## Requirements
* nmap (version 7.0 or later)
* Bash (version 4.0 or later)

## Installation
To install EasyMap, simply clone the repository and make the script executable:
```bash
git clone https://github.com/kaliforniaGator/easymap.git
cd easymap
chmod +x easymap
