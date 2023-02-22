CREATE DATABASE ${DB_NAME};
CREATE USER ${DB_USER}@localhost IDENTIFIED BY '${DB_PASS}';
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER on ${DB_NAME}.* to ${DB_USER}@localhost;
FLUSH PRIVILEGES;
