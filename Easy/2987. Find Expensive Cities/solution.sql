-- Write your PostgreSQL query statement below
with national AS (SELECT AVG(price) AS national_average
FROM Listings)

SELECT city
FROM Listings
GROUP BY city
HAVING AVG(price)>(SELECT AVG(price) AS national_average
FROM Listings)
ORDER BY city;