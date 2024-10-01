CREATE DATABASE spotify_db;
USE spotify_db;

CREATE TABLE spotify_songs (
    track_id VARCHAR(255),
    track_name VARCHAR(255),
    track_artist VARCHAR(255),
    track_popularity DOUBLE,
    track_album_id VARCHAR(255),
    track_album_name VARCHAR(255),
    track_album_release_date VARCHAR(255),
    playlist_name VARCHAR(255),
    playlist_id VARCHAR(255),
    playlist_genre VARCHAR(255),
    playlist_subgenre VARCHAR(255),
    danceability DOUBLE,
    energy DOUBLE,
    `key` DOUBLE,  -- Escape the 'key' column
    loudness DOUBLE,
    `mode` DOUBLE,  -- Escape the 'mode' column
    speechiness DOUBLE,
    acousticness DOUBLE,
    instrumentalness DOUBLE,
    liveness DOUBLE,
    valence DOUBLE,
    tempo DOUBLE,
    duration_ms DOUBLE
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/spotify_songs.csv'
INTO TABLE spotify_songs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- see the place to save the file
SHOW VARIABLES LIKE 'secure_file_priv';
