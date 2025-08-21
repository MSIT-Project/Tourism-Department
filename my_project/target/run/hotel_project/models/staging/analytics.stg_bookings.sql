

  create or replace view `dw-hotel-booking-analytics`.`raw`.`analytics.stg_bookings`
  OPTIONS()
  as SELECT
    a.booking_id,
    a.customer_id,
    a.hotel_id,
    a.booking_date,
    a.stay_duration,
    a.arrival_date,
    b.hotel_name,
    b.hotel_city
FROM `dw-hotel-booking-analytics`.`raw`.`stg_hotel_bookings` AS a
JOIN `dw-hotel-booking-analytics`.`raw`.`stg_hotel_bookings2` AS b
  ON a.hotel_id = b.hotel_id;

