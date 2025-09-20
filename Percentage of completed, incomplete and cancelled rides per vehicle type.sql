--Percentage of completed, incomplete and cancelled rides per vehicle type

select 
    Vehicle_Type, 

    count(booking_Status)[Total Bookings],

    sum(case when cancelled_rides_by_customer = 'null' 
        and cancelled_rides_by_Driver='null'
        and incomplete_rides='null' 
        then 1 else 0 end)[Completed Rides],

    cast(100.0 * sum(case when cancelled_rides_by_customer = 'null' 
        and cancelled_rides_by_Driver='null'
        and incomplete_rides='null' 
        then 1 else 0 end) 
        / count(*) as decimal(5,2)) as [%],

    sum(case when cancelled_rides_by_customer='1' 
        and cancelled_rides_by_Driver='null' 
        and incomplete_rides='null' 
        then 1 else 0 end)[Cancelled by Customer],

    cast(100.0 * sum(case when cancelled_rides_by_customer = '1' 
        and cancelled_rides_by_driver = 'null' 
        and incomplete_rides = 'null' 
        then 1 else 0 end) 
        / count(*) as decimal(5,2)) as [%],

    sum(case when cancelled_rides_by_customer = 'null' 
        and cancelled_rides_by_Driver='1' 
        and incomplete_rides='null' 
        then 1 else 0 end)[Cancelled by Driver],

    cast(100.0 * sum(case when cancelled_rides_by_customer = 'null' 
        and cancelled_rides_by_Driver='1' 
        and incomplete_rides='null' 
        then 1 else 0 end) 
        / count(*) as decimal(5,2)) as [%],

    sum(case when cancelled_rides_by_customer = 'null' 
        and cancelled_rides_by_Driver='null' 
        and incomplete_rides='1' 
        then 1 else 0 end)[Incomplete Rides],

    cast(100.0 * sum(case when cancelled_rides_by_customer = 'null' 
        and cancelled_rides_by_Driver='null' 
        and incomplete_rides='1' 
        then 1 else 0 end) 
        / count(*) as decimal(5,2)) as [%]

from Uber_Bookings
where not Booking_Status = 'No Driver Found'
Group by Vehicle_Type
order by [Completed Rides] desc
