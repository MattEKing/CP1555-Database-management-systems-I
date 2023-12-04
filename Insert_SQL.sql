CREATE TABLE invoices_copy AS SELECT * 
FROM invoices;

-- when inserting info you have to give the table name and columns 
-- and values is where you add the info to be added.
INSERT INTO invoices_copy
	(vendor_id, invoice_number, invoice_total, terms_id, invoice_date,
     invoice_due_date)
VALUES
	(97, '456789', 8344.50, 1, '2018-08-08', '2018-08-31');
    
-- you can insert multiple records to the DB if they are seperated by commas.    
INSERT INTO invoices_copy VALUES
	(116, 97, '456701', '2018-08-02', 270.50, 0, 0, 1, '2018-09-01', NULL),
    (117, 97, '456791', '2018-08-03', 4390.00, 0, 0, 1, '2018-09-02', NULL),
    (118, 97, '456792', '2018-08-03', 565.60, 0, 0, 1, '2018-09-02', NULL);

-- you can take info for other tables by select it and adding it to another.
INSERT INTO invoice_archive
	SELECT * FROM invoices
	WHERE invoice_total - payment_total - credit_total = 0;
    
-- you can pull info as you're creating a table and add at the same time.
create table vendors_data as 
select invoice_id, vendor_name, invoice_total from
vendors join invoices on vendors.vendor_id = invoices.vendor_id
where vendor_name = 'Federal Express Corporation';

-- Create a table called Fedex invoices which contains all the columns from
-- the invoices table that refer the vendor_id = 123

create table Fedex_Invoices as 
select * from invoices 
where vendor_id = 123;

-- insert a record into the Fedex_invoices table
-- (9876, 123, 'FE86453', '2018-11-14', 45, DEFAULT, DEFAULT, 2, '2023-12-14', NULL)

insert into Fedex_invoices 
Values (9876, 123, 'FE86453', '2018-11-14', 45, DEFAULT, DEFAULT, 2, '2023-12-14', NULL);


