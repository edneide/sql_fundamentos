
select *
from (
    select 
    seller_state
    ,count(*) as qtd_vendedor
    from tb_sellers
    --selecionando apenas alguns estados
    --where seller_state in ('SP', 'RJ', 'PR')
    group by seller_state
    order by qtd_vendedor
    )
where qtd_vendedor > 10


-- Outra forma de fazer
select 
    seller_state
    ,count(*) as qtd_vendedor
from tb_sellers
group by seller_state
having count(*) > 10
order by qtd_vendedor
