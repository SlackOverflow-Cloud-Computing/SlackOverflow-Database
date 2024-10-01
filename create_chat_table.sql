-- Step 1: Create the database
CREATE DATABASE chat_db;

-- Step 2: Use the newly created database
USE chat_db;

-- Step 3: Create the chat_info table
CREATE TABLE chat_info (
    chat_id CHAR(36) PRIMARY KEY,  -- PK, FK
    user_id CHAR(36) NOT NULL,
    user_name VARCHAR(255),
    agent_id CHAR(36),
    agent_name VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Step 4: Create the chat_details table
CREATE TABLE chat_details (
    message_id CHAR(36) PRIMARY KEY,  -- PK
    chat_id CHAR(36),                 -- FK referencing chat_info(chat_id)
    role ENUM('human', 'ai', 'system', 'tool'),
    content TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (chat_id) REFERENCES chat_info(chat_id)
);

-- Step 5: Verify the tables are created successfully
SHOW TABLES;
