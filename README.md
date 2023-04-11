# updateinstaller
automatically installs updates on any debian machine

**Install script automatically:**

`curl -sSL https://raw.githubusercontent.com/fankijo/updateinstaller/master/install-autoupdates.sh | bash`


**Install manually:**

run this script as cron job with root rights to be sure ur machine is up to date

- copy script to /bin/updateinstaller
- make it runnable `chmod -x /bin/updateinstaller`
- open cron for root user `crontab -u root -e`
- add `0 4 * * * /bin/updateinstaller` and the script runs every morning at 4am to install the updates
