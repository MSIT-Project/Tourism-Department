

  create or replace view `dw-hotel-booking-analytics`.`raw`.`int_hotel_bookings`
  OPTIONS()
  as -- models/intermediate/int_hotel_bookings.sql

WITH bookings AS (

    SELECT
        hotel_id,
        is_canceled,
        arrival_date_day_of_month,
        country,
        reservation_status
    FROM `dw-hotel-booking-analytics`.`raw`.`stg_hotel_bookings1`

    UNION ALL

    SELECT
        hotel_id,
        is_canceled,
        arrival_date_day_of_month,
        country,
        reservation_status
    FROM `dw-hotel-booking-analytics`.`raw`.`stg_hotel_bookings2`

)

SELECT * FROM bookings;

