#!/bin/sh

echo Installing updateinstaller...
echo ""

#download script
wget -O /bin/updateinstaller https://raw.githubusercontent.com/fankijo/updateinstaller/master/updateinstaller

#make script executable
chmod +x /bin/updateinstaller

#Install crontjob
crontab -l > ~/cronjobs

echo '0 4 * * * /bin/updateinstaller >> /var/log/updateinstaller/$(date +"%Y-%m-%d").log' >> ~/cronjobs

crontab ~/cronjobs
echo "Cronjob installed"

rm ~/cronjobs
