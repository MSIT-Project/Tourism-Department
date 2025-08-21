

  create or replace view `dw-hotel-booking-analytics`.`analytics_demo`.`my_second_dbt_model`
  OPTIONS()
  as -- Use the `ref` function to select from other models

select *
from `dw-hotel-booking-analytics`.`analytics_demo`.`my_first_dbt_model`
where id = 1;

