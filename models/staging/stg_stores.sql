select 
    storeid,
    storename,
    address,
    city,
    state,
    zipcode,
    email,
    phone,
    updated_at
from {{ source('landing', 'stores') }}