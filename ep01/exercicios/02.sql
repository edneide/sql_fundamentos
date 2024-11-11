-- Quantos produtos tem mais de 5 litros?
with volume as (select *,
    product_length_cm * product_height_cm * product_width_cm/1000 as volume_l
from tb_products
where product_length_cm * product_height_cm * product_width_cm/1000 > 5)

select count(*) as prod_mais_5l
from volume

-- 19.407 produtos têm mais de 5 litros

