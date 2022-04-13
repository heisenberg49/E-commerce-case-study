-- top category
select category_code,count(category_code) as times_sold
from events
where event_type = 'purchase' and category_code != ""
group by category_code
order by count(category_code) desc
limit 5;