-- Create database
CREATE DATABASE IF NOT EXISTS `${MYSQL_DATABASE}`;

-- Create user with full privileges for the laravel database
CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';
GRANT ALL PRIVILEGES ON `${MYSQL_DATABASE}`.* TO '${MYSQL_USER}'@'%';
FLUSH PRIVILEGES;