INSERT INTO genres(name) 
	VALUES('Pop'), ('Rap'), ('Classic'), ('Trance'), ('Rock');

INSERT INTO artists(name) 
	VALUES('ATB'),('Kylie Minogue'),
		('Metallica'),('Eminem'),
		('Ludwig van Beethoven'),('Linkin Park');

INSERT INTO genre_artist(genre_id, artist_id) 
	VALUES(1,2), (2,4),
		(3,5), (4,1),
		(5,3), (5,6);

INSERT INTO albums(name, year) 
	VALUES('Contact',1024), ('Body Language',2003),
		('ReLoad',1997), ('The Slim Shady',1999),
		('One More Light',2019);

INSERT INTO artist_album(artist_id, album_id) 
	values(1,1), (2,2), (3,3), (4,4),
		(6,5);

INSERT INTO tracks(name, duration, album_id) 
	values('My Name Is', 268, 4), ('Fuel', 270, 3),
		('Face to Face', 221, 1), ('Good Goodbye', 211, 5),
		('Red Blooded Woman', 260, 2), ('Chocolate', 301, 2);

INSERT INTO collections(name, year) 
	values('Best Rock', 2020), ('100 Hits', 2018),
		('Battle 2000', 2000), ('Classic XIX', 2009);

INSERT INTO collection_track(track_id, track_id) 
	values(1,2), (1,4), (2,3), (2,5), (3,1);