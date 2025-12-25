{{ config(materialized='table') }}

select 
	os.customerid,
	c.customername,
	sum(os.ordercount) as ordercount,
	sum(os.revenue) as revenue
from {{ ref('orders_fact') }} os 
join {{ ref('stg_customers') }} c on os.customerid = c.customerid
group by os.customerid,
c.customername

