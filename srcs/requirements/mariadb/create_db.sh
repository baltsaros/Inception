#!bin/sh
if [ ! -d "/var/lib/mysql/wordpress" ]; then
	echo "USE mysql;" > test.sql
	echo "FLUSH PRIVILEGES;" >> test.sql
	echo "DELETE FROM     mysql.user WHERE User='';" >> test.sql
	echo "DROP DATABASE test;" >> test.sql
	echo "DELETE FROM mysql.db WHERE Db='test';" >> test.sql
	echo "DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');" >> test.sql
	echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '';" >> test.sql
	echo "CREATE DATABASE $DB_NAME;" >> test.sql
	echo "CREATE USER '$DB_USER'@'%' IDENTIFIED by '$DB_PASS';" >> test.sql
	echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';" >> test.sql
	echo "FLUSH PRIVILEGES;" >> test.sql
	/usr/bin/mysqld --user=mysql --bootstrap < create_db.sql
fi
