CREATE TABLE `dw-hotel-booking-analytics.analytics.hotel_bookings_partitioned`
PARTITION BY reservation_status_date
AS
SELECT
    hotel,
    arrival_date_year,
    arrival_date_month,
    CAST(reservation_status_date AS DATE) AS reservation_status_date,
    adults,
    children,
    babies,
    adr,
    is_canceled
FROM `analytics_demo.hotel_bookings1`;