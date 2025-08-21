SELECT
    hotel_id,
    hotel_name,
    EXTRACT(WEEK FROM arrival_date) AS arrival_date_week_number,  -- calculate here
    COUNT(booking_id) AS total_bookings,
    SUM(stay_duration) AS total_nights
FROM `dw-hotel-booking-analytics`.`analytics_demo`.`fct_hotel_bookings`
GROUP BY
    hotel_id,
    hotel_name,
    arrival_date_week_number