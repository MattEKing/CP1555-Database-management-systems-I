use ap;
select vendor_name as "Vendor Name", concat(vendor_city,', ', 
vendor_state,', ', vendor_zip_code) as address
from vendors;