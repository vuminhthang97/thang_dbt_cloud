select 
	supplierid,
    suppliername,
    contactperson,
    email,
    phone,
    address,
    city,
    state,
    zipcode,
    updated_at
from {{ source('landing', 'suppliers') }}