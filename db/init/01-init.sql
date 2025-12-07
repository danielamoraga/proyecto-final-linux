CREATE DATABASE IF NOT EXISTS moodle_db
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

CREATE DATABASE IF NOT EXISTS wordpress_db
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

CREATE USER IF NOT EXISTS 'moodle_user'@'%' IDENTIFIED BY 'moodle_password';
GRANT ALL PRIVILEGES ON moodle_db.* TO 'moodle_user'@'%';

CREATE USER IF NOT EXISTS 'wp_user'@'%' IDENTIFIED BY 'wp_password';
GRANT ALL PRIVILEGES ON wordpress_db.* TO 'wp_user'@'%';

FLUSH PRIVILEGES;
