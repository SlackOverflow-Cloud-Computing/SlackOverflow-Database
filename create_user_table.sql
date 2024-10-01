-- Step 1: Create the database
CREATE DATABASE user_db;

-- Step 2: Use the newly created database
USE user_db;

-- Step 3: Create the user_info table
CREATE TABLE user_info (
    user_id CHAR(36) PRIMARY KEY,  -- UUID stored as a 36-character string
    user_name VARCHAR(255),
    password VARCHAR(255),  -- Store hashed password, VARCHAR(255) is common for hashes
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Step 4: Verify the table creation
SHOW TABLES;
