-- models/intermediate/int_hotel_bookings.sql

WITH bookings AS (

    SELECT
        hotel_id,
        is_canceled,
        arrival_date_day_of_month,
        country,
        reservation_status
    FROM {{ ref('stg_hotel_bookings1') }}

    UNION ALL

    SELECT
        hotel_id,
        is_canceled,
        arrival_date_day_of_month,
        country,
        reservation_status
    FROM {{ ref('stg_hotel_bookings2') }}

)

SELECT * FROM bookings