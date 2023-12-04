SELECT vendor_name, vendor_state, ROUND(AVG(invoice_total), 2) AS invoice_average_amount
FROM invoices JOIN vendors ON invoices.vendor_id = vendors.vendor_id
GROUP BY vendor_name 
HAVING AVG(invoice_total) > 2000
ORDER BY invoice_average_amount DESC;

SELECT vendor_id, COUNT(*) AS invoice_qty
FROM invoices
GROUP BY vendor_id;

SELECT vendor_state, vendor_city,  COUNT(*) AS invoice_qty,
	ROUND(AVG(invoice_total), 2) AS invoice_avg
FROM invoices JOIN vendors	
	ON invoices.vendor_id = vendors.vendor_id
GROUP BY vendor_state, vendor_city
ORDER BY vendor_state, vendor_city;

SELECT vendor_state, vendor_city,  COUNT(*) AS invoice_qty,
	ROUND(AVG(invoice_total), 2) AS invoice_avg
FROM invoices JOIN vendors	
	ON invoices.vendor_id = vendors.vendor_id
GROUP BY vendor_state, vendor_city
HAVING COUNT(*) >= 2
ORDER BY vendor_state, vendor_city;

SELECT vendor_name, COUNT(*)AS invoice_qty, 
	ROUND(AVG(invoice_total), 2) AS invoices_avg
FROM vendors JOIN invoices	
	ON vendors.vendor_id = invoices.vendor_id
GROUP BY vendor_name 
HAVING AVG(invoice_total) > 500
ORDER BY invoice_qty DESC;

