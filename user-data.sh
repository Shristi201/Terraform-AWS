# user-data.sh
 
#!/bin/bash
apt update -y
apt install apache2 php php-mysql mysql-client wget unzip -y
wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
cp -r wordpress/* /var/www/html/
chown -R www-data:www-data /var/www/html/
chmod -R 755 /var/www/html/
 