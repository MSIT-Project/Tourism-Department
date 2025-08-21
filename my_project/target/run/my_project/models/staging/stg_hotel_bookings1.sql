

  create or replace view `dw-hotel-booking-analytics`.`analytics_demo`.`stg_hotel_bookings1`
  OPTIONS()
  as SELECT
    hotel,
    is_canceled,
    arrive_date_day_of_month
    stays_in_weekend_nights
FROM `dw-hotel-booking-analytics.analytics_demo.hotel_bookings1`;

