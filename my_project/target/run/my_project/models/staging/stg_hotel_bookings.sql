

  create or replace view `dw-hotel-booking-analytics`.`analytics_demo`.`stg_hotel_bookings`
  OPTIONS()
  as SELECT
    hotel,
    is_canceled,
    arrival_date_day_of_month
    stays_in_weekend_nights
FROM `dw-hotel-booking-analytics.analytics_demo.hotel_bookings`;

