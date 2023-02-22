CREATE DATABASE wordpress;
GRANT ALL ON wordpress.* TO 'wordpressuser'@'%' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;
