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

