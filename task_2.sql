-- Inside task_2.sql, change the Customers table to this:
CREATE TABLE IF NOT EXISTS customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

-- Also update the Orders table to point to the new name:
CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);