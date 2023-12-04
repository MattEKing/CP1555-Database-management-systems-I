-- Question 4.

INSERT INTO invoices_copy 
VALUES (null, 32, 'AX-014-027', '2018-08-01', '434.58', default, default, 2, '2018-08-31', default); 

-- Question 5.

INSERT INTO invoice_line_items_copy (invoice_id, invoice_sequence, account_number, line_item_amount, line_item_description)
VALUES ((select invoice_id from invoices_copy where invoice_number = 'AX-014-027'), 1, 160, '180.23', 'Hard Drive');

INSERT INTO invoice_line_items_copy (invoice_id, invoice_sequence, account_number, line_item_amount, line_item_description)
VALUES ((select invoice_id from invoices_copy where invoice_number = 'AX-014-027'), 2, 527, '254.35', "EXchange Server update");

-- Question 6.

UPDATE invoices_copy SET credit_total = (0.1 * invoice_total), payment_total = (invoice_total - credit_total)
where invoice_number = 'AX-014-027';

-- Question 7.

UPDATE vendors_copy SET
default_account_number = 403
WHERE vendor_id = 44;

-- Question 8. 

UPDATE invoices_copy SET terms_id = 2
WHERE vendor_id in (SELECT vendor_id FROM vendors_copy
WHERE default_terms_id = 2);

-- Question 9. 
DELETE FROM invoice_line_items_copy 
WHERE invoice_id = (select invoice_id from invoices where invoice_number = 'AX-014-027');
DELETE FROM invoices_copy WHERE invoice_number = 'AX-014-027';
