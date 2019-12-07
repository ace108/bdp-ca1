select
    date_format(o.orderdate, "%Y-%m-%d") orderdate,
    od.productid,
    p.productname, od.orderquantity, od.orderprice,
    c.customerid, CONCAT(c.first_name, " ", c.last_name) customername
from
    products p,
    orderdetails od,
    orders o,
    customers c
where 
    od.productid = p.productid and
    o.orderid = od.orderid and
    o.orderdate between '2018-01-26' and '2018-01-31' and
    c.customerid = o.customerid 
order by 
    o.orderdate   -- not necessary but just want to see if there is anything. interestingly no order for 2018-01-31
