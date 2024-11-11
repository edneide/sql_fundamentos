-- Faça uma query que apresente o tamanho máximo e mínimo do nome do 
-- objeto por categoria
select 
    product_category_name,
    avg(product_name_lenght) as mean_name,
    min(product_name_lenght) as min_name,
    max(product_name_lenght) as max_name
from tb_products
group by product_category_name