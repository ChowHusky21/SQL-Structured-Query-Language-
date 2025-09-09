CREATE DATABASE Music DEFAULT CHARACTER SET UTF8MB4;

USE Music;

CREATE TABLE Artist (
	artist_name VARCHAR (255),
artist_id INTEGER NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (artist_id)
) ENGINE = InnoDB;

CREATE TABLE Album (
	album_title VARCHAR (255),
	album_length INTEGER,
	album_rating INTEGER,
	album_id INTEGER NOT NULL AUTO_INCREMENT,
	artist_id INTEGER,
	
PRIMARY KEY (album_id),
	INDEX USING BTREE (album_title),

CONSTRAINT FOREIGN KEY (artist_id)
REFERENCES Artist (artist_id)
ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE Genre (
	genre_name VARCHAR (255),
genre_id INTEGER NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (genre_id),
	INDEX USING BTREE (genre_name)
) ENGINE = InnoDB;

CREATE TABLE Track (
	track_title VARCHAR (255),
track_count INTEGER,
	track_length INTEGER,
	track_rating INTEGER,
	album_id INTEGER,
	genre_id INTEGER,
	track_id INTEGER NOT NULL AUTO_INCREMENT,
	
PRIMARY KEY (track_id),
	INDEX USING BTREE (track_title),

CONSTRAINT FOREIGN KEY (album_id)
REFERENCES Album (album_id)
ON DELETE CASCADE ON UPDATE CASCADE

CONSTRAINT FOREIGN KEY (genre_id)
REFERENCES Genre (genre_id)
ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;
CREATE DATABASE Music DEFAULT CHARACTER SET UTF8MB4;
USE Music;
CREATE TABLE Artist (artist_name VARCHAR (255), artist_id INTEGER NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (artist_id)) ENGINE = InnoDB;
CREATE TABLE Album (album_title VARCHAR (255), album_length INTEGER, album_rating INTEGER, album_id INTEGER NOT NULL AUTO_INCREMENT, artist_id INTEGER,
	PRIMARY KEY (album_id), INDEX USING BTREE (album_title), CONSTRAINT FOREIGN KEY (artist_id) REFERENCES Artist (artist_id)
	ON DELETE CASCADE ON UPDATE CASCADE) ENGINE = InnoDB;
CREATE TABLE Genre (genre_name VARCHAR (255), genre_id INTEGER NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (genre_id), INDEX USING BTREE (genre_name)) ENGINE = InnoDB;
CREATE TABLE Track (track_title VARCHAR (255), track_count INTEGER, track_length INTEGER, track_rating INTEGER, album_id INTEGER, genre_id INTEGER,
	track_id INTEGER NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (track_id), INDEX USING BTREE (track_title),
	CONSTRAINT FOREIGN KEY (album_id) REFERENCES Album (album_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FOREIGN KEY (genre_id) REFERENCES Genre (genre_id) ON DELETE CASCADE ON UPDATE CASCADE) ENGINE = InnoDB;

INSERT INTO Artist (artist_name) VALUES ('Kendrick Lamar');
INSERT INTO Artist (artist_name) VALUES ('Billie Eilish');
INSERT INTO Artist (artist_name) VALUES ('Blackpink');

INSERT INTO Album (album_title, album_length, album_rating, artist_id) VALUES ('Damn', 3294, 5, 1);
INSERT INTO Album (album_title, album_length, album_rating, artist_id) VALUES ('Hit Me Hard and Soft', 2625, 3, 2);
INSERT INTO Album (album_title, album_length, album_rating, artist_id) VALUES ('When We All Fall Asleep, Where Do We Go?', 2575, 4, 2);
INSERT INTO Album (album_title, album_length, album_rating, artist_id) VALUES ('Born Pink', 1474, 4, 3);
INSERT INTO Album (album_title, album_length, album_rating, artist_id) VALUES ('The Album', 1468, 3, 3);

INSERT INTO Genre (genre_name) VALUES ('Hip-hop');
INSERT INTO Genre (genre_name) VALUES ('Pop');
INSERT INTO Genre (genre_name) VALUES ('R&B');
INSERT INTO Genre (genre_name) VALUES ('New age');

INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id) VALUES ('DNA', 2, 185, 5, 1, 1);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('Loyalty', 6, 227, 5, 1, 3);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('Humble', 8, 177, 5, 1, 1);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('Love', 10, 213, 3, 1, 4);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('Bad Guy', 2, 194, 5, 2, 2);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('You Should See Me in a Crown', 4, 180, 4, 2, 2);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('All the Good Girls Go to Hell', 5, 168, 4, 2, 2);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('Wish You Were Gay', 6, 221, 3, 2, 2);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('When the Party''s Over', 7, 196, 3, 2, 2);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('Bury a Friend', 10, 193, 3, 2, 2);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('Come Out and Play', 15, 210, 4, 2, 2);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('Everything I Wanted', 18, 245, 4, 2, 2);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('Lunch', 2, 180, 4, 4, 2);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('Chihiro', 3, 303, 4, 3, 2);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('Birds of a Feather', 4, 210, 4, 5, 2);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('Wildflower', 5, 261, 4, 3, 2);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('How You Like That', 1, 181, 5, 4, 2);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('Ice Cream', 2, 176, 4, 4, 2);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('Lovesick Girls', 5, 194, 4, 4, 2);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('Pink Venom', 1, 186, 4, 5, 2);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('Shut Down', 2, 176, 4, 5, 2);
INSERT INTO Track (track_title, track_count, track_length, track_rating, album_id, genre_id)  VALUES ('Jump', 18, 164, 4, 5, 2);

SELECT Track.track_title, Track.track_count, Track.track_time, Track.track_rating, Album.album_title, Artist.artist_name, Genre.genre_id
	FROM Track JOIN Genre JOIN Album JOIN Artist ON Track.genre_id = Genre.genre_id
	AND Track.album_id = Album.album_id AND Album.artist_ID = Artist.artist_id
	ORDER BY Album.album_title ASC, Track.track_count ASC;

SELECT DISTINCT Track.track_title, Track.track_count, Track.track_time, Track.track_rating, Album.album_title, Artist.artist_name, Genre.genre_name
FROM Track JOIN Genre JOIN Album JOIN Artist ON Track.genre_id = Genre.genre_id
AND Track.album_id = Album.album_id AND Album.artist_ID = Artist.artist_id
WHERE Artist.artist_name = 'Kendrick Lamar'
ORDER BY Album.album_title ASC, Track.track_count ASC;