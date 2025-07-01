GNU nano 4.8                          tell
#!/bin/bash

# A) Loop through each logged-in user
for user in $(who | awk '{print $1}' | sort | uniq); do
    echo "============================================="
    echo "Username: $user"

    # B) Get login info from 'who' and user's home directory
    login_info=$(who | grep "^$user" | head -n 1)
    terminal=$(echo $login_info | awk '{print $2}')
    login_time=$(echo $login_info | awk '{print $3, $4}')
    ip_addr=$(echo $login_info | awk '{print $5}' | tr -d '()')

    echo "Logged In From: $terminal Since: $login_time ($ip_addr)"

    home_dir=$(eval echo ~$user)
    echo "Home Directory: $home_dir"
    echo "---------------------------------------"

    # C) Disk usage details
    echo "Disk space consumed in home directory (in K block):"
    find "$home_dir" -type f -exec du -k {} + 2>/dev/null

    total=$(du -sk "$home_dir" 2>/dev/null | awk '{print $1}')
    echo "Total Used (in K blocks):  $total"
    echo "--------------------------------------"

    # D) List all processes owned by the user
    echo "Process Information:"
    ps -u "$user" -f --forest
    echo "--------------------------------------"

    # E) Show total CPU and memory usage by that user
    echo "Overall CPU and Memory Utilization Information:"
    cpu_mem=$(ps -u "$user" -o %cpu,%mem --no-headers | awk '{cpu+=$1; mem+=$2}>
    echo "$cpu_mem"
    echo "============================================"
done
