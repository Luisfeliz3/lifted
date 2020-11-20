DROP DATABASE IF EXISTS lifted_db;
CREATE DATABASE lifted_db;
USE `lifted_db`;

CREATE TABLE workouts(
  id INT NOT NULL AUTO_INCREMENT,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  token VARCHAR(12) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE legs(
  id INT NOT NULL AUTO_INCREMENT,
  u_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE SET NULL
);

CREATE TABLE arms(
  id INT NOT NULL AUTO_INCREMENT,
  u_text VARCHAR(500) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (userprofiles_id) REFERENCES userprofiles(id) ON DELETE SET NULL
);

CREATE TABLE back(
  id INT NOT NULL AUTO_INCREMENT,
  u_text VARCHAR(500),
  post_id INT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (userprofiles_id) REFERENCES user(id) ON DELETE SET NULL,
  FOREIGN KEY (post_id) REFERENCES post(id) ON DELETE SET NULL
);