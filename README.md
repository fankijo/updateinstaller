# updateinstaller
automatically installs updates on any Ubuntu machine

run this script as cron job with root rights to be sure ur machine is up to date

- copy script to /bin/updateinstaller
- open cron for root user `crontab -u root -e`
- add `* 4 * * * /bin/updateinstaller` and the script runs every morning at 4am to install the updates.
  
