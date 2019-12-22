SELECT dest, max(distance) from flights ;
SELECT engines, max(seats) from planes group by engines;
SELECT count(flight) from flights;
SELECT carrier, count(flight) from flights group by carrier;
SELECT carrier, count(flight) as counts from flights group by carrier order by counts desc;
SELECT carrier, count(flight) as counts from flights group by carrier order by counts desc limit 0,5;
SELECT carrier, count(flight) as counts from flights where distance > 1000 group by carrier order by counts desc limit 0,5;
# Question: what is the total number of hours for each destination in ascending order?
SELECT dest, sum(hour) as hours FROM flights group by carrier order by hours asc;
