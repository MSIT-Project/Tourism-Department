SELECT
    a.booking_id,
    a.customer_id,
    a.hotel_id,
    a.booking_date,
    a.stay_duration,
    a.arrival_date,
    b.hotel_name,
    b.hotel_city
FROM {{ ref('stg_hotel_bookings1') }} AS a
JOIN {{ ref('stg_hotel_bookings2') }} AS b
  ON a.hotel_id = b.hotel_id