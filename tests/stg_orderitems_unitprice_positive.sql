select * from {{ ref('stg_orderitems') }}
where unitprice <= 0
or unitprice is null