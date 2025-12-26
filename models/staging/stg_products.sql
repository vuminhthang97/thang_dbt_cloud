select 
	productid,
    name,
    category,
    retailprice,
    supplierprice,
    supplierid,
    updated_at
from {{ source('landing', 'products') }}