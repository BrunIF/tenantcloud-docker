CREATE DATABASE tenantcloud CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE DATABASE tenantcloud_activity_log CHARACTER SET utf8 COLLATE utf8_general_ci;

GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root' WITH GRANT OPTION;

