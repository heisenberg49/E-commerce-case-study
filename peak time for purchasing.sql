-- peak timing of purchasing 
select 
	hour(event_time) as hour_utc,
	count(event_time) as number_of_times
from events
where event_type = 'purchase'
group by 1
order by 2 desc;