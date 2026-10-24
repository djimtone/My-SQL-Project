select 
	name, 
	description, 
	total_amount 
from 
	orders o
inner join 
	products p
on 
	p.product_id = o.product_id