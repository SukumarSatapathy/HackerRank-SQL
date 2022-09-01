/* The CITY table is described as follows: 
--Author: @SukumarSatapathy
--MySQL

+-------------+----------+
| Field       | Type     |
+-------------+----------+
| ID          | int(11)  |
| Name        | char(35) |
| CountryCode | char(3)  |
| District    | char(20) |
| Population  | int(11)  |
+-------------+----------+
Query all columns for all American cities in CITY with populations larger than 100000. The CountryCode for America is USA. */

SELECT * FROM CITY 
WHERE COUNTRYCODE = 'USA' AND POPULATION > 100000;