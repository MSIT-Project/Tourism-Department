SELECT
    hotel AS hotel_id,
    is_canceled,
    arrival_date_day_of_month,
    country,
    reservation_status
FROM {{ source('raw', 'hotel_bookings2') }}