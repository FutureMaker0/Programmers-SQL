-- 코드를 입력하세요
SELECT
    date_format(n.sales_date, '%Y-%m-%d') as sales_date,
    n.product_id,
    n.user_id,
    n.sales_amount
from online_sale n
where 
    date_format(n.sales_date, '%Y-%m') = '2022-03'
union all
SELECT
    date_format(f.sales_date, '%Y-%m-%d') as sales_date,
    f.product_id,
    null as user_id,
    f.sales_amount
from offline_sale f
where 
    date_format(f.sales_date, '%Y-%m') = '2022-03'
order by sales_date, product_id, user_id
