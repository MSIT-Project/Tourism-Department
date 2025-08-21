WITH bookings AS (
    SELECT * FROM `dw-hotel-booking-analytics`.`raw`.`int_hotel_bookings`
)

SELECT
    hotel_id,
    COUNT(*) AS total_bookings,
    SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) AS total_cancellations,
    COUNT(DISTINCT country) AS unique_countries,
    COUNT(DISTINCT arrival_date_day_of_month) AS unique_arrival_days
FROM bookings
GROUP BY hotel_id