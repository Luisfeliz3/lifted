DROP DATABASE IF EXISTS lifted_db;
CREATE DATABASE lifted_db;
USE `lifted_db`;




CREATE TABLE workouts(
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  description VARCHAR(500) NOT NULL,
  img_or_video VARCHAR(1024) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE legs(
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  description VARCHAR(500) NOT NULL,
  img_or_video VARCHAR(1024) NOT NULL,
  title_id INT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (title_id) REFERENCES workouts(id) ON DELETE SET NULL
);



select * from workouts;


CREATE TABLE back(
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  description VARCHAR(500) NOT NULL,
  img_or_video VARCHAR(1024) NOT NULL
);

CREATE TABLE abs(
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  description VARCHAR(500) NOT NULL,
  img_or_video VARCHAR(1024) NOT NULL
);

CREATE TABLE arms(
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  description VARCHAR(500) NOT NULL,
  img_or_video VARCHAR(1024) NOT NULL
);
-- if categeory === legs (show all legs escercises / title / description / image)

SELECT workouts.id, legs.description, workouts.title
FROM workouts
INNER JOIN legs ON workouts.id=legs.id;
