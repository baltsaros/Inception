FROM alpine:3.17
RUN apk update && apk upgrade && apk add --no-cache mariadb mariadb-client mariadb-server-utils
RUN mkdir /var/run/mysqld; chmod 777 /var/run/mysqld; \
		mkdir -p /var/lib/mysql; chown -R mysql:mysql /var/lib/mysql; \
		mysql_install_db --user=mysql --datadir=/var/lib/mysql
COPY ./requirements/mariadb/my.cnf /etc/mysql/my.cnf
#COPY ./requirements/mariadb/conf/create_db.sql /docker-entrypoint-initdb.d
EXPOSE 3306
#COPY requirements/mariadb/create_db.sh .
#RUN sh create_db.sh
#USER mysql
CMD ["mysqld", "--user=mysql", "--console"]
