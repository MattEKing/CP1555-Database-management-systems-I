-- Quiz 2
-- Question 1
SELECT count(invoice_id) AS 'count(*)' 
FROM invoices i JOIN vendors v 
ON  i.vendor_id = v.vendor_id
WHERE vendor_name = 'Pacific Bell';

-- Question 2
SELECT invoice_number, invoice_total 
FROM invoices i JOIN vendors v 
ON i.vendor_id = v.vendor_id
WHERE vendor_name = 'Pacific Bell'; 

-- Question 3 
SELECT sum(invoice_total) AS 'Invoices total Pac Bell'
FROM invoices i JOIN vendors v
ON i.vendor_id = v.vendor_id
WHERE vendor_name = 'Pacific Bell';

-- Question 4 
SELECT vendor_name, (invoice_total - credit_total - payment_total) AS 'Amount Due'
FROM invoices i JOIN vendors v
ON i.vendor_id = v.vendor_id
Where 'amount Due' > 100
ORDER BY 'amount due' desc
LIMIT 5;

-- Question 5 
SELECT line_item_description AS 'Description',
 line_item_amount AS 'Amount'
FROM invoice_line_items li JOIN invoices inv
ON li.invoice_id = inv.invoice_id
WHERE inv.invoice_number = "I77271-O01";


