/* The STATION table is described as follows:
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+
Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates. */

SELECT DISTINCT CITY FROM STATION
WHERE (CITY not LIKE 'A%' and CITY not LIKE 'E%' and CITY not LIKE 'I%' and CITY not LIKE 'O%' and CITY not LIKE 'U%');     
