bash /backup/np_backup.sh restore network && bash /backup/np_backup.sh restore zabbix && bash /backup/np_backup.sh restore users && cat /etc/np_scripts/root > /var/spool/cron/crontabs/root && chown root:crontab /var/spool/cron/crontabs/root && chmod 600 /var/spool/cron/crontabs/root