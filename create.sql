CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    VIN CHAR(17) NOT NULL,
    manufacturer VARCHAR(30) NOT NULL,
    model VARCHAR(20) NOT NULL,
    dates INT NOT NULL,
    color VARCHAR(20)
);

DROP TABLE IF EXISTS customers;
USE lab_mysql;
CREATE TABLE customers (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cust_id VARCHAR(20) NOT NULL,
    cust_name VARCHAR(100) NOT NULL,
    cust_phone VARCHAR(20) NOT NULL,
    cust_email VARCHAR(100),
    cust_address VARCHAR(255) NOT NULL,
    cust_city VARCHAR(100) NOT NULL,
    cust_state VARCHAR(100) NOT NULL,
    cust_country VARCHAR(100) NOT NULL,
    cust_zipcode VARCHAR(20) NOT NULL
);


USE lab_mysql;
DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    id INT NOT NULL AUTO_INCREMENT,
    staff_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    store VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS invoice;
CREATE TABLE invoice (
	id INT NOT NULL AUTO_INCREMENT,
    invoice_number INT NOT NULL , 
    date date,
    PRIMARY KEY (id),
    car INT NOT NULL,
    customer INT NOT NULL,
    salesperson INT NOT NULL,
    FOREIGN KEY (car) REFERENCES cars (id) ON DELETE CASCADE,
    FOREIGN KEY (customer) REFERENCES customers (id) ON DELETE CASCADE,
    FOREIGN KEY (salesperson) REFERENCES salespersons(id) ON DELETE CASCADE
);
