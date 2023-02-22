FROM alpine:3.17
RUN apk update && apk upgrade && apk add --no-cache mariadb mariadb-client mariadb-server-utils
RUN mkdir /var/run/mysqld; chmod 777 /var/run/mysqld; \
		mkdir -p /var/lib/mysql; chown -R mysql:mysql /var/lib/mysql; \
		mysql_install_db --user=mysql --datadir=/var/lib/mysql
#ENV MYSQL_ROOT_PASSWORD 123
#ENV MYSQL_DATABASE 123db
COPY ./requirements/mariadb/my.cnf /etc/mysql/my.cnf
EXPOSE 3306
CMD ["mysqld", "--user=mysql", "--console"]
