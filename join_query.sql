SELECT * FROM sales
select* from customer
	--inner join (customer and sales)
select * from sales as s
inner join customer as c
on s.customer_id=c.customer_id
--left join
select s.order_id,s.ship_date,s.customer_id,c.customer_id,c.customer_name,c.age from sales as s
left join customer as c
on s.customer_id=c.customer_id
	
--right join
select s.order_id,s.ship_date,s.customer_id,c.customer_id,c.customer_name,c.age from sales as s
right join customer as c
on s.customer_id=c.customer_id
	
--full join
select s.order_id,s.ship_date,s.customer_id,c.customer_id,c.customer_name,c.age from sales as s
full join customer as c
on s.customer_id=c.customer_id
	
select * from product
--inner join (sales and product)
select s.order_id,s.order_date,s.product_id,s.ship_mode,p.product_id,p.category,p.product_name from sales as s
inner join product as p
on p.product_id=s.product_id
--inner join( sales,customer,product)
select s.order_id,s.order_date,s.product_id,s.ship_mode,p.product_id,p.category,p.product_name,c.customer_id,c.customer_name,c.age from sales as s
inner join product as p
on p.product_id=s.product_id
inner join customer as c
on s.customer_id=c.customer_id

select*from sales as s
inner join product as p
on p.product_id=s.product_id
inner join customer as c
on s.customer_id=c.customer_id