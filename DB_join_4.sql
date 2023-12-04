use ap;
SELECT  vendor_name AS "Vendor name",
		invoice_number AS "Invoice #",
		invoice_date AS "Invoice date",
		(invoices.invoice_total - invoices.payment_total - invoices.credit_total) AS "Balance Due"
FROM vendors JOIN invoices
	ON invoices.vendor_id = vendors.vendor_id
    where (invoices.invoice_total - invoices.payment_total - invoices.credit_total) > 0;