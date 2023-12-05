use ap;

-- Question 1.

SELECT terms_id,COUNT(terms_id) Count FROM invoices
GROUP BY terms_id
ORDER BY Count DESC
limit 1;

-- Question 2.

SELECT monthname(payment_date) months, COUNT(payment_date) payments
FROM invoices WHERE monthname(payment_date) is not null
GROUP BY months
ORDER BY payments;

-- Question 3. 

SELECT g.account_number, sum(i.line_item_amount) as sum 
FROM invoice_line_items i JOIN general_ledger_accounts g
ON  i.account_number = g.account_number
GROUP BY g.account_number
HAVING sum > 10000
ORDER BY sum DESC;