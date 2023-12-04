use ap;
select invoice_number as "Invoice Number",
invoice_total as "Invoice Total", 
(payment_total + credit_total) as "Payment Total",
invoice_total - (payment_total + credit_total) as Balance_Due
from invoices where invoice_total - (payment_total + credit_total) > 50  
order by Balance_Due desc;