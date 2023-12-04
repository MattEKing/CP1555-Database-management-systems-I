use ap; 
select vendor_name as "Vendor Name", vendor_contact_last_name as "last Name",
 vendor_contact_first_name as "First Name" from vendors 
 order by vendor_contact_last_name, vendor_contact_first_name asc;