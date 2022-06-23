# Update Packages
apt update
# Upgrade Packages
apt upgrade -y

# Apache
apt install -y apache2

# Enable Apache Mods
a2enmod rewrite

# Install PHP
apt install -y php

# PHP Apache Mod
apt install -y libapache2-mod-php

# PHP-MYSQL lib
apt install -y php-mysql
# cp cogip folder in var/www/html
cp -r /vagrant/cogip /var/www/html
#setting apache default site with cogip
sed  -i 's/html/html\/cogip/g' /etc/apache2/sites-available/000-default.conf
#restart apache
systemctl restart apache2
