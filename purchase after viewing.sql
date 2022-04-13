-- purchased after viewing
select count(event_type) as times_purchased
from events E1
where exists(select
				*
                from events E2
                where E1.user_id = E2.user_id and
					E1.product_id = E2.product_id and
                    E2.event_type = 'view' and  E1.event_type = 'purchase');