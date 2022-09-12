select product_name from ORDERS
join CUSTOMERS C on ORDERS.customer_id = C.id
WHERE name='AleXEY'