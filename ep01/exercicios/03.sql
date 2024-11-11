-- Crie uma coluna 

select 
    *
    ,product_length_cm * product_height_cm *  product_width_cm / 1000000 as product_vol_m3
from tb_products



