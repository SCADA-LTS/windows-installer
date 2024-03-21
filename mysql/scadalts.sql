CREATE DATABASE IF NOT EXISTS scadalts;
USE scadalts;
CREATE USER IF NOT EXISTS '<mysql-username>'@'<mysql-host>' IDENTIFIED BY '<mysql-password>';
GRANT ALL ON scadalts.* TO '<mysql-username>'@'<mysql-host>';
FLUSH PRIVILEGES;
ALTER USER '<mysql-username>'@'<mysql-host>' IDENTIFIED BY '<mysql-password>';
FLUSH PRIVILEGES;