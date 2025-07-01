**📝 Description:**  
A Markdown guide showing how to manage scheduled tasks with `crontab`, including viewing, editing, and adding jobs like automated cleanups.


# Crontab Examples

## View Crontab
```bash
crontab -l

crontab -e

0 3 * * 1 /home/kj/scripts/weekly_cleanup.sh

