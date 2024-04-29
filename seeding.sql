USE lab_mysql;
INSERT INTO cars (id, VIN, manufacturer, model, dates ,color)
VALUES (1,	'3K096I98581DHSNUP',	'Volkswagen','Tiguan',	2019,	'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');


INSERT INTO salespersons (id,staff_id , name, store)
Values (1,	00001,	'Petey Cruiser','Madrid'),
(2, 00002, 'Anna Sthesia','Barcelona'),
(3, 00003, 'Paul Molive', 'Berlin'),
(4, 00004, 'Gail Forcewind', 'Paris'),
(5, 00005, 'Paige Turner', 'Miami'),
(6, 00006, 'Bob Frapples', 'Mexico City'),
(7, 00007, 'Walter Melon', 'Amsterdam' ),
(8, 00008, 'Shonda Leer', 'São Paulo' );

INSERT INTO invoice (id, invoice_number, date, car, customer, salesperson)
VALUES 
(1, 852399038, '2018-08-22', 1, 1, 3), -- Customer ID 1
(2, 731166526, '2018-12-31', 3, 1, 5), -- Adjusted to reference Customer ID 1
(3, 271135104, '2019-01-22', 2, 1, 7); -- Adjusted to reference Customer ID 1

select * 
FROM invoice
