![Screen Shot 2025-02-16 at 9 12 15 PM](https://github.com/user-attachments/assets/f52df9ca-8638-4220-8b05-901ba566fbfa)
# EasyMap
EasyMap is a simple nmap helper tool designed to make it easy to perform network scans using nmap. It provides a user-friendly interface for selecting scan options and executing nmap commands.

![Screen Shot 2025-02-18 at 10(1)(1)](https://github.com/user-attachments/assets/0f8bad66-59e5-4e08-9943-d69a03840b11)

## Features
- **Multiple Scan Types**: Supports various scan types, including:
  - TCP SYN scan (Fast and reliable)
  - UDP scan (Scans for open UDP ports)
  - TCP connect scan (Establishes a full TCP connection)
  - ACK scan (Determines if a port is open or filtered)
  - TCP Null scan (Evades firewalls by sending packets with no flags)
  - TCP FIN scan (Evades firewalls by sending FIN packets)
  - TCP Xmas scan (Evades firewalls by sending FIN, URG, and PSH packets)
  - TCP ACK scan (Similar to ACK scan)
  
- **Custom Ports**: Allows users to specify custom ports or port ranges for targeted scanning.
  
- **OS and Version Detection**: Supports OS detection and service version detection to gather detailed information about the target.

- **Firewall/IDS Evasion**: Includes options for using firewall/IDS evasion techniques to avoid detection.

- **Scan Speed Control**: Offers multiple scan speed options, including:
  - Paranoid (very slow)
  - Sneaky (slow)
  - Polite (medium)
  - Normal (fast)
  - Aggressive (very fast)
  - Insane (extremely fast)

- **Script Support**: Allows users to run predefined NSE (Nmap Scripting Engine) scripts for advanced scanning, including:
  - Banner grabbing
  - Broadcast listener
  - FTP brute force
  - HTTP enumeration
  - MySQL database and user enumeration
  - SMTP brute force and strange port detection

- **Output to File**: Provides the option to save scan results to a file for later analysis.

- **Host Discovery**: Allows users to skip host discovery, assuming all hosts are live.

- **Input Validation**: Ensures all user inputs are validated to prevent errors and security issues.

- **Timeout Handling**: Includes a timeout function for user input to prevent indefinite waiting.

- **Clean Exit**: Handles interruptions (e.g., Ctrl+C) gracefully with a cleanup function.

## Usage
To use EasyMap, simply run the script and follow the prompts to select your scan options. The tool will then execute the corresponding nmap command and display the results.

```bash
./easymap
```

## Requirements
- **nmap**: Version 7.0 or later.
- **Bash**: Version 4.0 or later.

## Installation
To install EasyMap, simply clone the repository and make the script executable:

```bash
git clone https://github.com/kaliforniaGator/easymap.git
cd easymap
chmod +x easymap
```

## Example Usage
1. Run the script:
   ```bash
   ./easymap
   ```
2. Follow the prompts to select:
   - Whether to use `sudo`
   - Target IP or hostname
   - Scan type (e.g., TCP SYN, UDP, etc.)
   - Custom ports (optional)
   - OS and version detection (optional)
   - Firewall/IDS evasion (optional)
   - Scan speed (e.g., Normal, Aggressive, etc.)
   - NSE scripts (optional)
   - Output file (optional)

3. The script will execute the nmap command and display the results.

## Notes
- EasyMap is designed to simplify the process of running nmap scans, especially for users who may not be familiar with all the command-line options.
- The script includes input validation and sanitization to ensure safe execution of commands.
- Ensure you have the necessary permissions to run nmap scans on your network.
