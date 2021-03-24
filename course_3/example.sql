CREATE TABLE IF NOT EXISTS products (
    product_id TEXT PRIMARY KEY,
	product_name TEXT,
	price INTEGER
);

INSERT INTO products (
    product_id, product_name, price)
    VALUES 
        ('item1', 'Fency Bag', 1000), 
        ('item2', 'Fency Watch', 2000),
        ('item3', 'Fency Shoulder Bag', 1500),
        ('item4', 'Fency Shoes', 500);
        
        
CREATE TABLE IF NOT EXISTS vip (
    vip_level INTEGER PRIMARY KEY,
    bag_discount FLOAT,
    shoes_discount FLOAT
);

INSERT INTO vip (
    vip_level, bag_discount, shoes_discount)
    VALUES 
        (1, 2, 5),
        (2, 5, 10),
        (3, 10, 15),
        (4, 15, 20);
        
       
CREATE TABLE IF NOT EXISTS customers (
    customer_id TEXT PRIMARY KEY,
    customer_name TEXT,
    customer_email TEXT,
    vip_level INTEGER,
    FOREIGN KEY(vip_level) REFERENCES vip(vip_level)
);

INSERT INTO customers (
    customer_id, customer_name, customer_email, vip_level)
    VALUES 
        ('abc123', 'Ken', 'ken@gmail.com', 2),
        ('abc124', 'John', 'john@gmail.com', 1),
        ('abc125', 'Bob', 'bob@gmail.com', 3),
        ('abc126', 'James', 'james@gmail.com', 1);
        
      
CREATE TABLE IF NOT EXISTS sales (
    transaction_id INTEGER PRIMARY KEY AUTOINCREMENT,
    product_id TEXT,
    customer_id TEXT,
    unit INTEGER,
    date NUMERIC,
    FOREIGN KEY(product_id) REFERENCES products(product_id),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

INSERT INTO sales (
    product_id, customer_id, unit, date)
    VALUES 
        ('item1', 'abc123', 1, '2021-1-2'), 
        ('item2', 'abc124', 1, '2021-1-2'),
        ('item1', 'abc125', 1, '2021-1-3'),
        ('item4', 'abc126', 2, '2021-1-3');
        
        