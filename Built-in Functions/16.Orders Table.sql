USE diablo;

CREATE TABLE orders (
id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(50),
order_date timestamp
);

INSERT INTO orders (product_name, order_date)
VALUES 
("Butter", "2016-09-19 00:00:00"),
("Milk", "2016-09-30 00:00:00"),
("Chees", "2016-09-04 00:00:00"),
("Bread", "2015-12-20 00:00:00"),
("Tomatoes", "2015-12-30 00:00:00");



SELECT product_name, order_date,
adddate(order_date, interval 3 day) AS pay_due,
adddate(order_date, interval 1 month) AS delivery_due
FROM orders;


