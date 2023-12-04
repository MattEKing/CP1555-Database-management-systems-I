-- Question 1

SELECT * FROM invoices JOIN invoice_line_items
ON invoices.invoice_id = invoice_line_items.invoice_id
WHERE invoice_number = "I77271-O01";

-- Question 2
 
SELECT * FROM invoices inv JOIN vendors ven 
ON inv.vendor_id = ven.vendor_id
WHERE ven.vendor_name = "Wells Fargo Bank"; 

-- Question 3

SELECT * FROM invoices i JOIN vendors v 
ON i.vendor_id = v.vendor_id
WHERE v.vendor_name = "Federal Express Corporation";

-- Question 4

SELECT  invoice_number,
		invoice_due_date,
        invoice_total
FROM invoices i JOIN vendors v 
	ON i.vendor_id = v.vendor_id
	WHERE v.vendor_name = "Federal Express Corporation";
    
-- Question 5

SELECT  invoice_number,
		invoice_due_date,
        invoice_total
FROM invoices i JOIN vendors v 
	ON i.vendor_id = v.vendor_id
	WHERE v.vendor_name = "Federal Express Corporation"
    ORDER BY invoice_total DESC LIMIT 3;
    
-- Question 6

SELECT * FROM invoices JOIN invoice_line_items
ON invoices.invoice_id = invoice_line_items.invoice_id
WHERE invoice_number = "963253230"; 

-- Question 7 

SELECT sum(i.invoice_total) AS sum
FROM invoices i JOIN vendors v
ON i.vendor_id = v.vendor_id
WHERE v.vendor_name = "Federal Express Corporation"



