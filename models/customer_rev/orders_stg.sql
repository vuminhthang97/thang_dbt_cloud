{{
    config( materialized='incremental',
            unique_key='ORDERID')
}}

select 
	orderid,
	orderdate,
	customerid,
	employeeid,
	storeid,
	status as statuscd,
	case 
		when status = '01' then 'In progress'
		when status = '02' then 'Completed'
		when status = '03' then 'Cancelled'
		else null
	end as statusdesc,
	updated_at,
	current_timestamp as dbt_updated_at
from {{ source('landing', 'orders') }}


-- {% if is_incremental() %}
-- where  Updated_at >= (select max(updated_at) from {{ this }})
-- {% endif %}
	