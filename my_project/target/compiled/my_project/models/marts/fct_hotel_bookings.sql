WITH combined AS (
    SELECT * FROM `dw-hotel-booking-analytics`.`analytics_demo`.`stg_hotel_bookings`
    UNION ALL
    SELECT * FROM `dw-hotel-booking-analytics`.`analytics_demo`.`stg_hotel_bookings2`
)

SELECT
    booking_id,
    customer_id,
    hotel_id,
    arrival_date
FROM combined