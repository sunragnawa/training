DBHOST=192.168.56.11:3306
DBNAME=cogip
DBUSER=cogip
DBPASSWD=cogippass
# Set MySQL Pass
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# Install MySQL
apt install -y mysql-server

# Create cogip database
mysql -uroot -proot -e "CREATE DATABASE $DBNAME;"
# Create non-root user and grant priviledge on cogip database
mysql -uroot -proot -e "CREATE USER '$DBUSER'@'$DBHOST' IDENTIFIED BY '$DBPASSWD';"
mysql -uroot -proot -e "GRANT ALL PRIVILEGES ON $DBNAME.* TO '$DBUSER'@'$DBHOST';"
mysql -uroot -proot -e "FLUSH PRIVILEGES;"

# Create tables into cogip database
mysql -uroot -proot $DBNAME < /vagrant/cogip/database/cogip.sql
# Insert a user into user table
mysql -uroot -proot $DBNAME -e "INSERT INTO user(username,password,mode) VALUES('mourad','password','winner');"

# PHP-MYSQL lib
apt install -y php-mysql
