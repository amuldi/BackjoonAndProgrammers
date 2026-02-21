select (price div 10000)*10000 as price_group, count(*) as products # div : 정수 나눗셈
from product
group by price_group
order by price_group;