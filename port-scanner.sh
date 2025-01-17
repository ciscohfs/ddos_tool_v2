#!/bin/bash
# Simple Port Scanner in Bash
# Usage: ./port_scanner.sh <target_ip> <start_port> <end_port>
TARGET_IP=$1
START_PORT=$2
END_PORT=$3
if [ $# -ne 3 ]; then
    echo "Usage: $0 <target_ip> <start_port> <end_port>"
    exit 1
fi
scan_port() {
    timeout 1 bash -c "echo > /dev/tcp/$TARGET_IP/$1" 2>/dev/null
    if [ $? -eq 0 ]; then
        echo "Port $1 is open"
    fi
}
for (( port=$START_PORT; port<=$END_PORT; port++ )); do
    scan_port $port &
done
wait