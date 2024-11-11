-- Faça uma query que apresente o tamanho médio,
-- máximo e mínimo do nome do objeto por categoria.
-- Considere apenas os objetos que tenham a descrição
-- maior que 150.

select 
    product_category_name,
    avg(product_name_lenght) as mean_name,
    min(product_name_lenght) as min_name,
    max(product_name_lenght) as max_name
from tb_products
where product_description_lenght >= 100
group by product_category_name
