#A shell script to clean up /tmp by removing files older than 7 days. Ideal for use in scheduled tasks via cron.
#!/bin/bash
# Deletes all files in the /tmp directory that are older than 7 days.
# Useful for automated weekly system maintenance to free up space.
find /tmp -type f -mtime +7 -exec rm -f {} \;
