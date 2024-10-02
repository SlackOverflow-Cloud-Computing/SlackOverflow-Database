-- Step 1: Create the database
CREATE DATABASE playlist_db;

-- Step 2: Use the newly created database
USE playlist_db;

-- Step 3: Create the playlist_info table
CREATE TABLE playlist_info (
    playlist_id CHAR(36) PRIMARY KEY,  -- UUID stored as a 36-character string
    playlist_name VARCHAR(255),
    user_id CHAR(36) NOT NULL,
    user_name VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE playlist_content (
    playlist_id CHAR(36),  -- UUID stored as a 36-character string
    playlist_name VARCHAR(255),
    track_id VARCHAR(255),
    track_name VARCHAR(255),
    added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (playlist_id) REFERENCES playlist_info(playlist_id)
);

-- Step 4: Verify the table creation
SHOW TABLES;