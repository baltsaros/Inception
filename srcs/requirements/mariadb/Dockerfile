FROM alpine:3.16
ARG DB_NAME DB_USER DB_UPASS DB_RPASS
RUN apk update && apk upgrade && apk add --no-cache mariadb mariadb-client
RUN mkdir /var/run/mysqld; chmod 777 /var/run/mysqld
COPY requirements/mariadb/conf/my.cnf /etc/my.cnf.d/mariadb-server.cnf
COPY requirements/mariadb/conf/my.cnf /etc/mysql/my.cnf
RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql
EXPOSE 3306
COPY requirements/mariadb/create_db.sh .
RUN sh create_db.sh; rm -f create_db.sh
USER mysql
CMD ["/usr/bin/mysqld"]
