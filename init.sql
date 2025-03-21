CREATE DATABASE IF NOT EXISTS db_tars;
CREATE DATABASE IF NOT EXISTS db_tars_web;
CREATE DATABASE IF NOT EXISTS db_user_system;
CREATE DATABASE IF NOT EXISTS db_base;


GRANT ALL PRIVILEGES ON db_tars.* TO 'tarsAdmin'@'%';
GRANT ALL PRIVILEGES ON db_tars_web.* TO 'tarsAdmin'@'%';
GRANT ALL PRIVILEGES ON db_user_system.* TO 'tarsAdmin'@'%';
GRANT ALL PRIVILEGES ON db_base.* TO 'tarsAdmin'@'%';
FLUSH PRIVILEGES;
