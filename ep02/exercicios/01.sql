--Faça uma query que apresente o tamanho médio, máximo e mínimo da descrição do
--objeto por categoria
select 
    product_category_name,
    avg(product_description_lenght) as mean_desc,
    max(product_description_lenght) as max_desc,
    min(product_description_lenght) as min_desc
from tb_products
group by product_category_name
