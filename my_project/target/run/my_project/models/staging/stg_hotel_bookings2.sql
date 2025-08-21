

  create or replace view `dw-hotel-booking-analytics`.`analytics_demo`.`stg_hotel_bookings2`
  OPTIONS()
  as SELECT
    hotel      -- rename if needed
    is_canceled,    -- use actual column name
    country     -- use actual column name
    reservation_status
FROM `dw-hotel-booking-analytics.analytics_demo.hotel_bookings2`;

