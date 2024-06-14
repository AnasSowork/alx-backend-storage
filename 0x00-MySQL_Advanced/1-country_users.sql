-- Script to create the 'users' table with specified attributes and constraints

-- Create the 'users' table if it does not already exist
CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,   -- Primary key, auto-incrementing
    email VARCHAR(255) NOT NULL UNIQUE,           -- Email, unique and non-nullable
    name VARCHAR(255),                            -- Name, with a max length of 255 characters
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US' -- Country, enumeration with default 'US'
) ENGINE=InnoDB;
