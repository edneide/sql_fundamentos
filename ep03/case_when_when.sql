-- lista de categorias por prdem alfabética
select 
    distinct case when product_category_name is null then 'outros'
                  when product_category_name = 'alimentos' 
                       or product_category_name = 'alimentos_bebidas' then 'alimentos'
                  when product_category_name in ('artes', 'artes_e_artesanato') then 'artes'
                  when product_category_name like "%artigos%" then 'artigos'
                  when product_category_name like "casa%" then 'casa'
                  else product_category_name
             end as categoria_fillna
from tb_products
-- order by product_category_name
order by 1
