SELECT MIN(weight) AS myMin, MAX(weight) AS myMax, AVG(weight) AS myAVG FROM container;

SELECT pName, city, country FROM port ORDER BY country;

SELECT pName, COUNT(sName) AS myCount FROM ship GROUP BY pName ORDER BY pName;

SELECT shipID, COUNT(cID) AS myCount FROM container GROUP BY shipID ORDER BY shipID;

SELECT sName, city, country, p.pName FROM port p, ship s WHERE p.pName = s.pName ORDER BY sName;

SELECT sName, capName, year, COUNT(p.pName) AS myCount 
FROM port p, ship s 
WHERE p.pName = s.pName 
GROUP BY sName, capName, year 
ORDER BY capName;

SELECT sName, displacement, crewNum, s.pName, city 
FROM ship s JOIN port p ON s.pName = p.pName;

SELECT p.pName, city, capName 
FROM port p, ship s 
WHERE p.pName = s.pName AND country = 'UK'
ORDER BY city;

SELECT sName, city, country 
FROM ship s, port p
WHERE p.pName = s.pName AND p.pName = 'Port Bachelor';

SELECT cID, shipID, weight - (SELECT AVG(weight) FROM container) as weightDiff
FROM container
WHERE weight > 
	(SELECT AVG(weight) 
	FROM container);
    
SELECT cID, length*width*height AS volume FROM container;

