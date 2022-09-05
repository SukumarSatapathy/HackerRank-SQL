/* 
--Author: @SukumarSatapathy
--MySQL
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'. */

select city.name
from city, country
where city.countrycode = country.code and country.continent = 'AFRICA'
