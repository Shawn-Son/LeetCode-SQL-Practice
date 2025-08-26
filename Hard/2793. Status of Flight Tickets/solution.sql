WITH passenger_order AS (SELECT passenger_id, flight_id, ROW_NUMBER() OVER (PARTITION BY flight_id ORDER BY booking_time) AS order
FROM Passengers
ORDER BY flight_id,booking_time)

SELECT po.passenger_id, CASE WHEN po.order<=f.capacity THEN 'Confirmed' ELSE 'Waitlist' END AS Status
FROM passenger_order po
JOIN Flights f
ON po.flight_id=f.flight_id
ORDER BY passenger_id;