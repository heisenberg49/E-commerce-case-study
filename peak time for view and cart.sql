-- peak timing of view and cart 
select 
	hour(event_time) as hour_utc,
	count(event_time) as number_of_times
from events
where event_type in ('view','cart')
group by 1
order by 2 desc;
