-- Step 1: Use user database again
USE user_db;

-- Step 3: Create the playlist_info table
CREATE TABLE spotify_user (
    id CHAR(28) PRIMARY KEY,  -- UUID stored as a 28-character string
    username VARCHAR(255),
    email VARCHAR(255),
    profile_image BLOB,
    country VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_login TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE token (
    access_token VARCHAR(255),
    token_type VARCHAR(255),
    scope VARCHAR(255),
    expires_in DOUBLE,
    refresh_token VARCHAR(255)
);

-- Step 4: Verify the table creation
SHOW TABLES;
