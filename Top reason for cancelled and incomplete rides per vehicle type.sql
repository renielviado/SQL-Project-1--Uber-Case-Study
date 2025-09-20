

--Top reason for cancelled and incomplete rides per vehicle type

With Customer as (
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
),

driver as (
select 
    Vehicle_Type,
    Driver_Cancellation_Reason as [Driver Cancellation Reason],
    count(*) as [Count],
    DENSE_RANK() over (
        partition by Vehicle_Type 
        order by count(*) desc
    ) as [Rank],
    cast(100.0 * count(*) / sum(count(*)) over (partition by Vehicle_Type) as decimal(5,2)) as [% / Vehicle Type]
from ride_bookings
where not Driver_Cancellation_Reason = 'null'
group by Vehicle_Type, Driver_Cancellation_Reason
),

Incomplete as (
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
group by Vehicle_Type, Incomplete_Rides_Reason)

select a.Vehicle_Type,a.[Reason for Cancelling by Customer][Top 1 Reason of Cutomer],a.Count,
    b.[Driver Cancellation Reason][Top 1 Reason of Driver],b.Count,
    c.[Incomplete Rides Reason][Top 1 Reason for Incomplete Rides],c.Count 
from customer a join driver b on a.Vehicle_Type=b.Vehicle_Type join Incomplete c on b.Vehicle_Type=c.Vehicle_Type
where a.[Rank] = 1 and b.[rank] =1 and c.[rank]=1
order by Vehicle_Type;


