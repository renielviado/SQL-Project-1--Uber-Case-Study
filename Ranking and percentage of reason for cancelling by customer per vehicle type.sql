

--Ranking and percentage of REASON FOR CANCELLING BY CUSTOMER per Vehicle Type

select 
    Vehicle_Type,
    Reason_for_cancelling_by_Customer as [Reason for Cancelling by Customer],
    count(*) as [Count],
    DENSE_RANK() over (
        partition by Vehicle_Type 
        order by count(*) desc
    ) as [Rank],
    cast(100.0 * count(*) / sum(count(*)) over (partition by Vehicle_Type) as decimal(5,2)) as [% / Vehicle Type]
from ride_bookings
where not Reason_for_cancelling_by_Customer = 'null'
group by Vehicle_Type, Reason_for_cancelling_by_Customer
order by Vehicle_Type, [Rank];
