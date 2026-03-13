-- 1) Station Popularity: A list of the top 5 stations where rides most frequently start.
SELECT 
    s.station_id,
    s.name AS station_name,
    s.address,
    COUNT(r.ride_id) AS total_rides_started
FROM bike_management.Station s
JOIN bike_management.Ride r ON s.station_id = r.start_station_id
GROUP BY s.station_id, s.name, s.address
ORDER BY total_rides_started DESC
LIMIT 5;

-- 2) Revenue Analysis: Calculate the total monthly revenue grouped by membership type (e.g., "Pay-as-you-go" vs. "Monthly Subscriber").
SET search_path TO bike_management;
SELECT
    TO_CHAR(p.payment_date, 'YYYY-MM') AS month,
    CASE
        WHEN p.subscription_id IS NOT NULL THEN 'Subscriber'
        ELSE 'Pay-as-you-go'
    END AS membership_type,
    COUNT(p.payment_id) AS total_payments,
    ROUND(SUM(p.amount), 2) AS total_revenue
FROM bike_management.Payment p
GROUP BY 
    TO_CHAR(p.payment_date, 'YYYY-MM'),
    CASE
        WHEN p.subscription_id IS NOT NULL THEN 'Subscriber'
        ELSE 'Pay-as-you-go'
    END
ORDER BY month ASC, total_revenue DESC;

-- 3) Maintenance Alert: A query using a JOIN to find all Electric Bikes with a battery level below 20%
-- that are currently docked.
SET search_path TO bike_management;
SELECT
    b.bike_id,
    b.serial_number,
    b.battery_level AS battery_pct,
    b.status,
    bt.type_name AS bike_type,
    s.name AS docked_at_station,
    s.address
FROM Bike b
JOIN BikeType bt ON b.bike_type_id = bt.bike_type_id
JOIN Station s ON b.station_id = s.station_id
WHERE bt.type_name = 'Electric'
  AND b.battery_level < 20
  AND b.station_id IS NOT NULL;

-- 4)User Behavior: Find users who have ridden more than the average distance, sorted by ridden
-- distance.
WITH user_avg AS (
    SELECT
        u.user_id, u.first_name, u.last_name, u.email,
        COUNT(r.ride_id) AS total_rides,
        ROUND(AVG(r.distance), 2) AS avg_user_distance
    FROM bike_management."User" u
    JOIN bike_management.Ride r 
        ON r.user_id = u.user_id
    GROUP BY u.user_id, u.first_name, u.last_name, u.email
)

SELECT
    user_id, first_name, last_name, email, total_rides, avg_user_distance
FROM user_avg
WHERE avg_user_distance > (
    SELECT AVG(distance)
    FROM bike_management.Ride
)
ORDER BY avg_user_distance DESC;