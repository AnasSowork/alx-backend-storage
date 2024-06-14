-- Initial setup: Create tables 'items' and 'orders', and insert initial data

DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS orders;

CREATE TABLE IF NOT EXISTS items (
    name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL DEFAULT 10
);

CREATE TABLE IF NOT EXISTS orders (
    item_name VARCHAR(255) NOT NULL,
    number INT NOT NULL
);

INSERT INTO items (name) VALUES ('apple'), ('pineapple'), ('pear');
