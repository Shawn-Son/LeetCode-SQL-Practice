SELECT MIN(GREATEST(p1.x,p2.x)-LEAST(p1.x,p2.x)) AS shortest
FROM Point p1
JOIN Point p2
ON p1.x != p2.x