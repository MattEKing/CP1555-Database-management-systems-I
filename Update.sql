use ap;
select * from invoices where invoice_id = '78';
update invoices set payment_date = '2018-09-21', payment_total = 193512.18
where invoice_number = '95/522';

update invoices set terms_id = 1
where vendor_id in (select vendor_id From vendors
where vendor_state in ('CA', 'AZ', 'NV'));

select * from terms;

insert into terms (terms_id, terms_description, terms_due_days)
values (6, 'Net due 120 days', 120);

update terms set terms_due_days = 125, terms_description = 'Net due days 125'
where terms_id = 6;