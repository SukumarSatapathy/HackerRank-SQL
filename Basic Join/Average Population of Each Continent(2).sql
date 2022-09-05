/* 
--Author: @SukumarSatapathy
--MySQL
Given the CITY and COUNTRY tables, 
query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer. */

SELECT CON.CONTINENT, FLOOR(AVG(CITY.POPULATION))
FROM CITY, COUNTRY AS CON
WHERE CITY.COUNTRYCODE = CON.CODE
GROUP BY CON.CONTINENT
