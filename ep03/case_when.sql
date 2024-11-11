-- lista de categorias por prdem alfabética
select 
    distinct case when product_category_name is null then 'outros'
         else product_category_name
    end as categoria_fillna
from tb_products
-- order by product_category_name
order by 1




select 
        case when product_category_name is null then 'outros'
         else product_category_name
    end as categoria_fillna
    ,count(*) as qtd_produto
from tb_products
group by 1
order by 1
