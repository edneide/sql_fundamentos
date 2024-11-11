-- Ex1: Quantos produtos temos da categoria 'artes'?

select 
    count(*) as qtde_linhas,
    count(product_id) as qtde_produtos,
    count(distinct product_id) as qtde_prod_distintos
    --count(distinct product_category_name) as qtde_categorias
from tb_products
where product_category_name = 'artes'

-- temos 55 produtos da categoria artes