select 
        distinct coalesce(product_category_name, 'outros') as categoria_fillna
from tb_products
order by product_category_name