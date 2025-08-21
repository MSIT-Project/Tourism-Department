

  create or replace view `dw-hotel-booking-analytics`.`raw`.`stg_hotel_bookings`
  OPTIONS()
  as SELECT
    hotel AS hotel_id,
    is_canceled,
    arrival_date_day_of_month,
    country,
    reservation_status
FROM `dw-hotel-booking-analytics`.`analytics_demo`.`hotel_bookings1`;

