CREATE MATERIALIZED VIEW `dw-hotel-booking-analytics.analytics.mv_daily_bookings`
AS
SELECT
    reservation_status_date AS booking_date,
    COUNT(*) AS total_bookings,
    SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) AS total_cancellations,
    AVG(adr) AS avg_daily_rate
FROM `dw-hotel-booking-analytics.analytics.hotel_bookings_partitioned`
GROUP BY booking_date;