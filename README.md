# Multi-Purpose Security Tool

This tool is a Bash script designed to perform various security operations such as DDOS attacks, port scanning, and reconnaissance. It is compatible with Linux systems and Windows (using Git Bash).

## Features

1. **DDOS Attack**: Using the Hammer tool, this script can perform DDOS attacks. You can specify the target IP and port, as well as the number of packets to send.

2. **Port Scanner**: The tool can scan a range of ports on a specified IP address. You can define the start and end of the port range.

3. **Reconnaissance Tool**: The tool can perform reconnaissance tasks such as DNS lookup, WHOIS lookup, subdomain discovery, and HTTP header analysis.

## Usage

### Prerequisites
- **Linux**: The script runs natively on Linux systems.
- **Windows**: Requires Git Bash to run the script.
- **Python**: Required for running the Hammer tool (for DDOS attacks).
- **Common Tools**: Ensure tools like `ping`, `nslookup`, `curl`, and `git` are installed.

### Running the Tool
1. Clone the repository or download the script.
2. Open a terminal (Linux) or Git Bash (Windows).
3. Run the script using the following command:
   ```bash
   bash tool.sh
   ```
4. Follow the on-screen prompts to select and configure the desired operation.

### Options
1. **DDOS Attack**:
   - Clone the Hammer tool repository.
   - Provide the target IP, port, and packet count.
   - The script will execute the DDOS attack.

2. **Port Scanner**:
   - Enter the target IP and the range of ports to scan.
   - The script will scan the specified ports and display open ones.

3. **Reconnaissance Tool**:
   - Enter the target domain or IP.
   - Choose from options like DNS lookup, WHOIS lookup, subdomain discovery, and HTTP header analysis.
   - The script will perform the selected tasks and display the results.

4. **Retry Script**:
   - Restarts the script from the beginning.

5. **Exit**:
   - Exits the tool.

## Notes
- **Windows Compatibility**: The script is tested on Windows using Git Bash. Ensure Git Bash is installed and configured properly.
- **Ethical Use**: This tool is intended for educational and ethical purposes only. Misuse of this tool for unauthorized activities is strictly prohibited.
- **Dependencies**: Some features (e.g., Hammer for DDOS) require additional tools or libraries. Ensure all dependencies are installed before use.

## Example Commands
- **DDOS Attack**:
  ```bash
  python hammer.py -s <target_ip> -p <target_port> -t <packet_count>
  ```
- **Port Scanning**:
  ```bash
  bash tool.sh
  ```
  (Select option 2 and provide the target IP and port range.)

- **Reconnaissance**:
  ```bash
  bash tool.sh
  ```
  (Select option 3 and choose the desired reconnaissance tasks.)

## Contributing
Feel free to contribute to this project by submitting issues or pull requests. Your feedback and improvements are welcome!

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

This `README.md` provides a comprehensive overview of the tool, its features, and usage instructions. Make sure to update it as you enhance the tool or add new functionalities.