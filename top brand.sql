-- top 10 brand
select brand,count(brand) as times_sold
from events
where event_type = 'purchase' and brand != ""
group by brand
order by count(brand) desc
limit 10;