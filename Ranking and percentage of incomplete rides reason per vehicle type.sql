

--Ranking and percentage of INCOMPLETE RIDES REASON per Vehicle Type

select 
    Vehicle_Type,
    Incomplete_Rides_Reason as [Incomplete Rides Reason],
    count(*) as [Count],
    DENSE_RANK() over (
        partition by Vehicle_Type 
        order by count(*) desc
    ) as [Rank],
    cast(100.0 * count(*) / sum(count(*)) over (partition by Vehicle_Type) as decimal(5,2)) as [% / Vehicle Type]
from ride_bookings
where not Incomplete_Rides_Reason = 'null'
group by Vehicle_Type, Incomplete_Rides_Reason
order by Vehicle_Type, [Rank];
