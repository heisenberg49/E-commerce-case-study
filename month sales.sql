use sales;
select * from events;
alter table events
add column event_date date; 
update events
set event_date = left(event_time,10);

-- month of sales
select 
	year(event_date) as year,
	month(event_date) as month,
	monthname(event_date) as month_name,
    count(event_date) as net_sales,
    sum(price) as Total_sales_amount
from events
where event_type = 'purchase'
group by 2,1
order by  count(event_date) desc, sum(price) desc;
