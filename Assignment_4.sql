-- Question 1.

SELECT FORMAT(invoice_total,1) Total FROM invoices;

SELECT CONVERT(invoice_total, unsigned) Total FROM invoices;

SELECT CAST(invoice_total AS unsigned)  Total FROM invoices;

-- Question 2. 

SELECT invoice_date FROM invoices;

SELECT CAST(invoice_date AS datetime) 'Date' FROM invoices;

SELECT CAST(invoice_date AS char(7)) 'Year & Month' FROM invoices;

-- Question 3.

CREATE TABLE weekdays (
		weekday_id integer not null auto_increment primary key,
		Days ENUM ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'));
	
INSERT INTO weekdays (Days)
VALUES ('Monday'), ('Tuesday'), ('Wednesday'), ('Thursday'), ('Friday');

select * from weekdays where weekday_id = 2;

-- Question 4. 

CREATE TABLE colours (
		Colour_id integer not null auto_increment primary key,
        colour varchar(40),
        combo SET ('Red','Yellow','BLue'));
        
INSERT INTO Colours (colour, combo)
VALUES ('Orange', 'Red,Yellow'),
	   ('Green', 'Blue,Yellow'),
       ('Purple','Blue,Red');

select * from colours where combo like "%Red%";