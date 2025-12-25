select 
	o.orderid,
	o.orderdate,
	o.customerid,
	o.employeeid,
	o.storeid,
	o.statuscd,
	o.statusdesc,
	count(distinct o.orderid) as ordercount,
	sum(oi.totalprice) as revenue
from  {{ ref('stg_orders') }} o
join {{ ref('stg_orderitems') }} oi on o.orderid = oi.orderid
group by
	o.orderid,
	o.orderdate,
	o.customerid,
	o.employeeid,
	o.storeid,
	o.statuscd,
	o.statusdesc