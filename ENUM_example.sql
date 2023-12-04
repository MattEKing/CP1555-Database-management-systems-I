 use ap;

/* Create a table to store all supported delivery methods */
create table delivery (
    delivery_id integer not null auto_increment primary key,
    invoice_id VARCHAR(40),
    method ENUM ('Canada Post', 'DHL', 'UPS', 'Courier', 'Taxi', 'Bus', 'Hand'));
    
/* Add some data to that table */
insert into delivery (invoice_id, method) values
    (1, 'Canada Post'),
    (2, 'DHL'),
    (3, 'UPS'),
    (4, 'Hand');

/* Find all invoices that are to be delivered by hand */
select * from delivery;