CREATE DATABASE IF NOT EXISTS <mysql-database>;
USE <mysql-database>;
CREATE USER IF NOT EXISTS '<mysql-username>'@'<mysql-host>' IDENTIFIED BY '<mysql-password>';
GRANT ALL ON <mysql-database>.* TO '<mysql-username>'@'<mysql-host>';
FLUSH PRIVILEGES;
ALTER USER '<mysql-username>'@'<mysql-host>' IDENTIFIED BY '<mysql-password>';
FLUSH PRIVILEGES;