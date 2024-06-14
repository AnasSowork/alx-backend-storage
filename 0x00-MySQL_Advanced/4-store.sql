-- Create a trigger to decrease item quantity after adding a new order

-- Drop the trigger if it already exists
DROP TRIGGER IF EXISTS update_item_quantity;

-- Create the trigger
CREATE TRIGGER update_item_quantity
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
    SET quantity = quantity - NEW.number
    WHERE name = NEW.item_name;
END;
