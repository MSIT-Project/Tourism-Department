
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select booking_id
from `dw-hotel-booking-analytics`.`analytics_demo`.`fct_hotel_bookings`
where booking_id is null



  
  
      
    ) dbt_internal_test