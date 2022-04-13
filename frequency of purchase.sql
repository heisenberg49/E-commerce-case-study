-- frequency of purchase
select user_id, count(user_id) as no_of_purchase_times
from events
where event_type ='purchase'
group by user_id
order by count(user_id) desc;