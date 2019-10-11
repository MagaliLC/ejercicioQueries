SELECT COUNT(*) as total FROM flights;

SELECT origin, AVG(DepDelay), AVG(ArrDelay)
 FROM flights
 GROUP BY origin;
 
 SELECT colMonth, colYear, origin, AVG(ArrDelay)
 FROM flights
 GROUP BY origin
 ORDER BY origin;
 
SELECT city, colYear, colMonth,  AVG(ArrDelay)
 FROM flights as f
 LEFT JOIN usairports as a
 ON (f.origin=a.IATA)
 GROUP BY city, colYear, colMonth
 ORDER BY city;
 
 SELECT UniqueCarrier, colYear, colMonth, AVG(ArrDelay) as avg_delay, SUM(cancelled) as total_cancelled
 FROM flights as f
 LEFT JOIN carriers as c
 ON (f.UniqueCarrier = c.CarrierCode)
 GROUP BY UniqueCarrier, colYear, colMonth
 HAVING  total_cancelled
 ORDER BY total_cancelled DESC;
 
 SELECT TailNum, SUM(Distance) as total_distance
 FROM flights
 WHERE TailNum != " "
 GROUP BY TailNum
 HAVING total_distance
 ORDER BY total_distance DESC
 LIMIT 10;
 
 SELECT UniqueCarrier, AVG(ArrDelay) as avg_delay
 FROM flights as f
 LEFT JOIN carriers as c
 ON (f.UniqueCarrier = c.CarrierCode)
 GROUP BY UniqueCarrier
 HAVING avg_delay > 10
 ORDER BY avg_delay DESC;
  
 

 
 
 