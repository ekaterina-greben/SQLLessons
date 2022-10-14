USE Sales;

select * from dbo.goods g 
left join (select good_id, sum(quantity) quantity
from dbo.purchases
group by good_id) p
on g.id = p.good_id



