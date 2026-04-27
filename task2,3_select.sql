SELECT name, duration FROM tracks    
	ORDER BY duration DESC
	LIMIT 1;
	
SELECT name FROM tracks 
	WHERE duration >= 210;
	
SELECT name FROM collections 
	WHERE year BETWEEN 2018 and 2020;
	
SELECT name FROM artists
	WHERE name NOT LIKE '%% %%';
	
SELECT name FROM tracks
	WHERE name LIKE '%%My%%';


SELECT g.name, count(ge.artist_id) FROM genres g
   JOIN genre_artist ge ON g.genre_id = ge.genre_id
   GROUP BY g.name;

SELECT a.name, a.year, count(t.track_id) FROM albums a
   JOIN tracks t ON a.album_id = t.album_id
   WHERE a.year BETWEEN 2019 and 2020
   GROUP BY a.name, a.year;

SELECT a.name, AVG(t.duration) FROM albums a
	JOIN tracks t ON a.album_id = t.album_id
	GROUP BY a.name;

SELECT e.name FROM artists e
   JOIN artist_album ea ON e.artist_id = ea.artist_id
   JOIN albums a ON a.album_id = ea.album_id
   WHERE a.year != 2020; 

SELECT c.name FROM collections c
   JOIN collection_track tc ON c.collectoin_id = tc.collection_id
   JOIN tracks t ON t.track_id = tc.track_id
   JOIN albums a ON a.album_id = t.album_id
   JOIN artist_album ea ON a.album_id = ea.album_id
   JOIN artists e ON e.artist_id = ea.artist_id
   WHERE e.name LIKE '%%Eminem%%';