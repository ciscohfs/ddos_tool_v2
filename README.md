# Multi-Purpose Security Tool

This tool is a **single-script** Bash-based utility designed to perform various security operations such as DDOS attacks, port scanning, and reconnaissance. All functionalities are integrated into the `main.sh` script, so there is no need to run additional scripts or tools separately. It is compatible with Linux systems and Windows (using Git Bash).

---

## Features

1. **DDOS Attack**:  
   - Utilizes the Hammer tool to perform DDOS attacks.  
   - Allows you to specify the target IP, port, and the number of packets to send.  

2. **Port Scanner**:  
   - Scans a range of ports on a specified IP address.  
   - You can define the start and end of the port range.  

3. **Reconnaissance Tool**:  
   - Performs tasks such as:  
     - DNS lookup  
     - WHOIS lookup  
     - Subdomain discovery  
     - HTTP header analysis  
   - Provides a user-friendly interface to select and execute these tasks.  

4. **Retry Script**:  
   - Restarts the script from the beginning without exiting.  

5. **Exit**:  
   - Exits the tool gracefully.  

---

## Usage

### Prerequisites
- **Linux**: The script runs natively on Linux systems.  
- **Windows**: Requires Git Bash to run the script.  
- **Python**: Required for running the Hammer tool (for DDOS attacks).  
- **Common Tools**: Ensure tools like `ping`, `nslookup`, `curl`, and `git` are installed.  

---

### Running the Tool
1. Download or clone the repository containing the `main.sh` script.  
2. Open a terminal (Linux) or Git Bash (Windows).  
3. Run the script using the following command:  
   ```bash
   bash main.sh
   ```  
4. Follow the on-screen prompts to select and configure the desired operation.  

---

### Options
1. **DDOS Attack**:  
   - The script will guide you through cloning the Hammer tool (if not already cloned).  
   - You will be prompted to provide:  
     - Target IP  
     - Target port  
     - Number of packets to send  
   - The script will execute the DDOS attack using Hammer.  

2. **Port Scanner**:  
   - Enter the target IP and the range of ports to scan.  
   - The script will scan the specified ports and display open ones.  

3. **Reconnaissance Tool**:  
   - Enter the target domain or IP.  
   - Choose from options like:  
     - DNS lookup  
     - WHOIS lookup  
     - Subdomain discovery  
     - HTTP header analysis  
   - The script will perform the selected tasks and display the results.  

4. **Retry Script**:  
   - Restarts the script from the beginning.  

5. **Exit**:  
   - Exits the tool.  

---

## Notes
- **Windows Compatibility**: The script is tested on Windows using Git Bash. Ensure Git Bash is installed and configured properly.  
- **Ethical Use**: This tool is intended for educational and ethical purposes only. Misuse of this tool for unauthorized activities is strictly prohibited.  
- **Dependencies**: Some features (e.g., Hammer for DDOS) require additional tools or libraries. Ensure all dependencies are installed before use.  

---

## Example Workflow
1. **Run the Script**:  
   ```bash
   bash main.sh
   ```  

2. **Select an Option**:  
   - Choose `1` for DDOS, `2` for Port Scanning, or `3` for Reconnaissance.  

3. **Follow Prompts**:  
   - Provide the required inputs (e.g., IP, port, domain).  

4. **View Results**:  
   - The script will display the results of the selected operation.  

---

## Contributing
Feel free to contribute to this project by submitting issues or pull requests. Your feedback and improvements are welcome!  

---

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.  

---

This `README.md` provides a clear and concise overview of your tool, emphasizing that all functionalities are integrated into the `main.sh` script. It also includes instructions for running the tool on both Linux and Windows systems. Let me know if you need further adjustments!