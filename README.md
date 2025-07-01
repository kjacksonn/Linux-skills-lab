# Linux Skills Lab

This repository showcases the hands-on Linux system administration work I completed during my Linux course using Bodhi Linux in VirtualBox. It includes shell scripting, job scheduling, disk and file system management, permissions, and system boot process analysis.

## 🧰 Tools Used
- **Bodhi Linux** (VirtualBox VM)
- **Bash / Shell Scripting**
- **cron** and **at**
- **`find`**, **`du`**, **`chmod`**, **`chown`**, **`mount`**, **`fstab`**, etc.

---

## 📁 Directory Structure
```
Linux-Skills-Lab/
├── README.md
├── scripting/
│   ├── tell.sh
|    └──  tell_output.txt
│   
├── permissions/
│   ├── chmod_examples.md
│   └── user_group_demo.md
├── cron_jobs/
│   ├── weekly_cleanup.sh
│   ├── at_job_example.sh
│   └── crontab_examples.md
├── disk_management/
│   ├── fstab_example.md
│   └── partition_commands.md
├── boot_process/
    ├── runlevels.md
    └── systemd_services.md

```

---

## 🔧 Highlights

### ✅ `tell.sh`
- Loops through logged-in users
- Displays login name, remote origin, session duration, and home directory
- Calculates file sizes in home directories
- Outputs total space used

### ✅ Permissions & Ownership
- Demonstrates recursive permission changes with `chmod -R`
- Creates custom user and group assignments

### ✅ Task Scheduling
- Automates tasks with `crontab` and `at`
- Scripts for scheduling file cleanup and reporting

### ✅ Disk Setup
- Partitions and formats a new drive
- Edits `/etc/fstab` for persistent mounting at boot

---

## 📌 Learning Outcomes
- Built confidence navigating and administering Linux systems from the terminal
- Learned to write and debug shell scripts
- Practiced securing files, managing services, and handling scheduled jobs
- Gained foundational skills in Linux-based system automation and maintenance

---

## 📷 Screenshots / Output Samples
Terminal output for tell.sh `tell_output.txt` 

---

## 🚀 Future Plans
- Add hardening scripts for SSH and firewall
- Expand with log monitoring scripts
- Convert `tell.sh` into a more modular toolkit

---

## 📫 Contact
Kerry "KJ" Jackson II  
🌐 [LinkedIn](https://linkedin.com/in/kjacksonn)
