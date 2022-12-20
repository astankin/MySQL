USE `car_rental`;

CREATE TABLE `categories`(
id INT PRIMARY KEY AUTO_INCREMENT, 
category VARCHAR(50) NOT NULL, 
daily_rate DECIMAL(10, 2), 
weekly_rate DECIMAL(10, 2), 
monthly_rate DECIMAL(10,2),
weekend_rate DECIMAL(10,2)
);

INSERT INTO `categories`(`category`)
VALUES ("Test1"),
		("Test2"),
        ("Test3");

CREATE TABLE `cars`(
id INT PRIMARY KEY AUTO_INCREMENT, 
plate_number VARCHAR(50) NOT NULL UNIQUE, 
make VARCHAR(50) NOT NULL, 
model VARCHAR(50) NOT NULL, 
car_year YEAR, 
category_id INT, 
doors INT, 
picture BLOB, 
car_condition VARCHAR(50), 
available BOOLEAN NOT NULL,
FOREIGN KEY (`category_id`)
REFERENCES `categories`(`id`)
);
INSERT INTO `cars`(`plate_number`, `make`, `model`, `category_id`, `available`)
VALUES ("PB8181CT", "OPEL", "Corsa", 1, TRUE),
		("PB1818CT", "Honda", "Civic", 2, TRUE),
        ("PB8256CT", "Toyota", "Corola", 3, FALSE);
        
CREATE TABLE `employees`(
id INT PRIMARY KEY AUTO_INCREMENT, 
first_name VARCHAR(50) NOT NULL, 
last_name VARCHAR(50) NOT NULL, 
title VARCHAR(50), 
notes TEXT
);

INSERT INTO `employees`(`first_name`, `last_name`)
VALUES ("Ivan", "Ivanov"),
		("Georgi", "Atanasov"),
        ("Petar", "Petrov");

CREATE TABLE `customers`(
id INT PRIMARY KEY AUTO_INCREMENT, 
driver_licence_number VARCHAR(50) UNIQUE NOT NULL, 
full_name VARCHAR(50) NOT NULL, 
address VARCHAR(50), 
city VARCHAR(50), 
zip_code VARCHAR(50), 
notes TEXT
);

INSERT INTO `customers`(`driver_licence_number`, `full_name`)
VALUES ("123456", "Ivan Ivanov"),
		("1523648", "Georgi Atanasov"),
        ("8795421", "Petar Petrov");

CREATE TABLE `rental_orders`(
id INT PRIMARY KEY AUTO_INCREMENT, 
employee_id INT NOT NULL, 
customer_id INT NOT NULL, 
car_id INT NOT NULL, 
car_condition VARCHAR(50), 
tank_level VARCHAR(50), 
kilometrage_start VARCHAR(50), 
kilometrage_end VARCHAR(50), 
total_kilometrage VARCHAR(50), 
start_date DATE, 
end_date DATE, 
total_days INT, 
rate_applied DECIMAL(10,2), 
tax_rate DECIMAL(10,2), 
order_status VARCHAR(50), 
notes TEXT
);
INSERT INTO `rental_orders`(`employee_id`, `customer_id`, `car_id`)
VALUES (1, 1, 1),
		(2, 2, 2),
        (3, 3, 3);



