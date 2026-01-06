-- KPI : Total Bookings
SELECT COUNT(*) AS total_bookings
FROM GOLD_HOTEL;

-- KPI : total revenue
SELECT SUM(total_amount)
FROM GOLD_HOTEL;

-- KPI : Total guests
SELECT SUM(num_guests) as total_guests
FROM GOLD_HOTEL;

--KPI : AVG Booking Value
SELECT AVG(total_amount) as avg_booking
FROM GOLD_HOTEL;

-- chart for monthly total revenue
SELECT date,total_revenue
FROM GOLD_DAILY_BOOKING
ORDER BY date;

-- chart for monthly bookings
SELECT date,total_booking
FROM GOLD_DAILY_BOOKING
ORDER BY date;

-- chart for Top Cities by Revenue
SELECT * FROM GOLD_HOTEL_CITY_SALES
WHERE total_revenue is not null
ORDER BY total_revenue DESC
LIMIT 5;

-- chart for Bookings by Status
SELECT booking_status, COUNT(*) AS total
FROM GOLD_HOTEL
GROUP BY booking_status;

-- chart for Bookings by Room Type
SELECT room_type, COUNT(*) AS total_bookings
FROM GOLD_HOTEL
GROUP BY room_type
ORDER BY total_bookings DESC;
