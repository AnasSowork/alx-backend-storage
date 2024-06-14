-- Show and add orders, then display the updated items and orders tables

-- Display the initial state of items and orders
SELECT * FROM items;
SELECT * FROM orders;

-- Add new orders
INSERT INTO orders (item_name, number) VALUES ('apple', 1);
INSERT INTO orders (item_name, number) VALUES ('apple', 3);
INSERT INTO orders (item_name, number) VALUES ('pear', 2);

-- Separator for clarity in the output
SELECT "--";

-- Display the updated state of items and orders
SELECT * FROM items;
SELECT * FROM orders;
