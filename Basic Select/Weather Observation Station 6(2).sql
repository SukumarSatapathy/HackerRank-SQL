/*
--Author: @SukumarSatapathy
--MySQL
The STATION table is described as follows:
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates. */

SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE "a%" OR CITY LIKE "e%" OR CITY LIKE "o%" OR CITY LIKE "i%" OR CITY LIKE "u%";
