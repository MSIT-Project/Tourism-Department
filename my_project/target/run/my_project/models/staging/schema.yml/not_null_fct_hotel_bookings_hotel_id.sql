
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select hotel_id
from `dw-hotel-booking-analytics`.`analytics_demo`.`fct_hotel_bookings`
where hotel_id is null



  
  
      
    ) dbt_internal_test