USE table_relations;

CREATE TABLE people (
person_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
salary DECIMAL(10, 2),
passport_id INT
);

INSERT INTO `people` (`person_id`, `first_name`, `salary`, `passport_id`) 
VALUES 
    (1, 'Roberto', 43300.00, 102), 
    (2, 'Tom', 56100.00, 103), 
    (3, 'Yana', 60200.00, 101);
    
CREATE TABLE passports(
passport_id INT,
passport_number VARCHAR(50) UNIQUE
);

INSERT INTO `passports` (`passport_id`, `passport_number`) 
VALUES 
    (101, 'N34FG21B'), 
    (102, 'K65LO4R7'), 
    (103, 'ZE657QP2');

ALTER TABLE passports
ADD PRIMARY KEY (passport_id);

ALTER TABLE people
ADD FOREIGN KEY (passport_id) 
REFERENCES passports(passport_id);

ALTER TABLE people
ADD UNIQUE (passport_id);






