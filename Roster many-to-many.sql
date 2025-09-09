CREATE DATABASE Roster DEFAULT CHARACTER SET UTF8MB4;
USE Roster;
CREATE TABLE 'User' (
user_id INTEGER NOT NULL AUTO_INCREMENT,
name VARCHAR (128),
	PRIMARY KEY (user_id)
) ENGINE = InnoDB CHARACTER SET UTF8MB4;

CREATE TABLE Course (
course_id INTEGER NOT NULL AUTO_INCREMENT,
title VARCHAR (128) UNIQUE, 
PRIMARY KEY (course_id)
) ENGINE = InnoDB CHARACTER SET UTF8MB4;

CREATE TABLE Member (
role_id INTEGER), 
role VARCHAR (128), 
user_id INTEGER, 
course_id INTEGER,
	CONSTRAINT FOREIGN KEY (user_id) REFERENCES User (user_id)
ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FOREIGN KEY (course_id) REFERENCES Course (course_id)
ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY (user_id, course_id),
	INDEX USING BTREE (role)
) ENGINE = InnoDB CHARACTER SET UTF8MB4;

INSERT INTO User (name) VALUES ('Ramanas');
INSERT INTO User (name) VALUES ('Annie');
INSERT INTO User (name) VALUES ('Cedar');
INSERT INTO User (name) VALUES ('Cejay');
INSERT INTO User (name) VALUES ('Trassa');
INSERT INTO User (name) VALUES ('Trinity');
INSERT INTO User (name) VALUES ('Amberlouise');
INSERT INTO User (name) VALUES ('Hcen');
INSERT INTO User (name) VALUES ('Latif');
INSERT INTO User (name) VALUES ('Madison');
INSERT INTO User (name) VALUES ('Nirvana');
INSERT INTO User (name) VALUES ('Leigha');
INSERT INTO User (name) VALUES ('Nader');
INSERT INTO User (name) VALUES ('Prithvi');
INSERT INTO User (name) VALUES ('Reynold');

INSERT INTO Course (title) VALUES ('si106');
INSERT INTO Course (title) VALUES ('si110');
INSERT INTO Course (title) VALUES ('si206');

INSERT INTO Member (role_id, role) VALUES (0, ‘student’)
INSERT INTO Member (role_id, role) VALUES (1, ‘instructor’)

INSERT INTO Member (user_id, course_id, role) VALUES ('1', '1', '1');
INSERT INTO Member (user_id, course_id, role) VALUES ('2', '1', '0');
INSERT INTO Member (user_id, course_id, role) VALUES ('3', '1', '0');
INSERT INTO Member (user_id, course_id, role) VALUES ('4', '1', '0');
INSERT INTO Member (user_id, course_id, role) VALUES ('5', '1', '0');
INSERT INTO Member (user_id, course_id, role) VALUES ('6', '2', '1');
INSERT INTO Member (user_id, course_id, role) VALUES ('7', '2', '0');
INSERT INTO Member (user_id, course_id, role) VALUES ('8', '2', '0');
INSERT INTO Member (user_id, course_id, role) VALUES ('9', '2', '0');
INSERT INTO Member (user_id, course_id, role) VALUES ('10', '2', '0');
INSERT INTO Member (user_id, course_id, role) VALUES ('11', '3', '1');
INSERT INTO Member (user_id, course_id, role) VALUES ('12', '3', '0');
INSERT INTO Member (user_id, course_id, role) VALUES ('13', '3', '0');
INSERT INTO Member (user_id, course_id, role) VALUES ('14', '3', '0');
INSERT INTO Member (user_id, course_id, role) VALUES ('15', '3', '0');

SELECT User.name, Course.title, Member.role
FROM User  JOIN Member JOIN Course
ON User.user_id = Member.user_id
AND Member.course_id = Course.course_id
ORDER BY Course.title, Member.role, User.name