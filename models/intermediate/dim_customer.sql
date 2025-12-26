
select
    {{ dbt_utils.generate_surrogate_key(['customerid']) }} as customer_sk,
    customerid,
	firstname,
	lastname,
	email,
	phone,
	address,
	city,
	state,
	zipcode,
	updated_at,
    customername
from {{ ref ('stg_customers') }}