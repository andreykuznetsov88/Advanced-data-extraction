 CREATE TABLE IF NOT EXISTS genres (
 	genre_id SERIAL PRIMARY KEY,
 	name VARCHAR(60) NOT NULL
 );
 
 CREATE TABLE IF NOT EXISTS artists (
 	artist_id SERIAL PRIMARY KEY,
 	name VARCHAR(60) NOT NULL
 );
  
CREATE TABLE IF NOT EXISTS genre_artist (
	genre_id INTEGER REFERENCES genres(genre_id),
	artist_id INTEGER REFERENCES artists(artist_id),
	CONSTRAINT genre_artist_pk PRIMARY KEY (genre_id, artist_id)
);
 
CREATE TABLE IF NOT EXISTS albums (
 	album_id SERIAL PRIMARY KEY,
 	name VARCHAR(60) NOT NULL,
 	year INTEGER NOT NULL
 );
  
CREATE TABLE IF NOT EXISTS artist_album (
	artist_id INTEGER REFERENCES artists(artist_id),
	album_id INTEGER REFERENCES albums(album_id),
	CONSTRAINT artist_album_pk PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS collections (
 	collectoin_id SERIAL PRIMARY KEY,
 	name VARCHAR(60) NOT NULL,
 	year INTEGER NOT NULL 	
 );

CREATE TABLE IF NOT EXISTS tracks (
 	track_id SERIAL PRIMARY KEY,
 	name VARCHAR(60) NOT NULL,
 	duration INTEGER NOT NULL,
 	album_id INTEGER references albums(album_id)
 );
   
CREATE TABLE IF NOT EXISTS collection_track (
	collection_id INTEGER REFERENCES collections(collectoin_id),
	track_id INTEGER REFERENCES tracks(track_id),
	CONSTRAINT collection_track_pk PRIMARY KEY (collection_id, track_id)
 );