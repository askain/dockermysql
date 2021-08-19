CREATE DATABASE yourdatabase;

-- for mysql:8
-- CREATE USER 'youraccount'@'%' IDENTIFIED WITH mysql_native_password BY 'yourpassword';
-- CREATE USER 'youraccount'@'localhost' IDENTIFIED WITH mysql_native_password BY 'yourpassword';

-- for mysql:5.7
CREATE USER 'youraccount'@'%' IDENTIFIED BY 'yourpassword';
CREATE USER 'youraccount'@'localhost' IDENTIFIED BY 'yourpassword';

GRANT ALL PRIVILEGES on yourdatabase.* TO 'youraccount'@'%';
GRANT ALL PRIVILEGES on yourdatabase.* TO 'youraccount'@'localhost';
