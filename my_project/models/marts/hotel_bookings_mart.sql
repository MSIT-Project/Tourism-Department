{{ config(materialized='table') }}

select
    hotel as hotel_name,
    total_bookings,
    avg_daily_rate,
    cancellation_rate
from {{ ref('int_hotel_bookings') }}