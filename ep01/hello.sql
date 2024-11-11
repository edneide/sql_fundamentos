-- selecionando tudo
select * 
from tb_products
limit 10


-- usando where
select product_id,
       product_category_name,
       product_photos_qty
from tb_products
where (product_category_name = 'bebes'
    or product_category_name = 'perfumaria')
and product_photos_qty > 1
limit 30

-- bebes acima de 1 foto
-- perfumaria  acima de 5 fotos
select t1.product_id,
       t1.product_category_name,
       t1.product_photos_qty
from tb_products as t1
where (t1.product_category_name = 'bebes'
       and t1.product_photos_qty > 1)
or (t1.product_category_name = 'bebes'
       and t1.product_photos_qty > 1)
limit 10
