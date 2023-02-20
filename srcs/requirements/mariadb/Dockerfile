FROM alpine:3.17
RUN apk update && apk add --no-cache mariadb mariadb-client mariadb-server-utils
ENV MYSQL_ROOT_PASSWORD 123
ENV MYSQL_DATABASE 123db
COPY my.cnf /etc/mysql/my.cnf
EXPOSE 3306
