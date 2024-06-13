-- 0-uniq_users.sql
-- This script creates the 'users' table with the specified attributes and constraints.
-- If the table already exists, the script will not fail.

-- Create the 'users' table if it doesn't exist
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,      -- 'id' is an integer, never null, auto increment, and primary key
    email VARCHAR(255) NOT NULL UNIQUE,     -- 'email' is a string (255 characters), never null, and unique
    name VARCHAR(255)                       -- 'name' is a string (255 characters)
);
