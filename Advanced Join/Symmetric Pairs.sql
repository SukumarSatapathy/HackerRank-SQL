/* 
--Author: @SukumarSatapathy
--MySQL

Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.
Write a query to output all such symmetric pairs in ascending order by the value of X. */

SELECT IF(X<Y, X, Y) AS X1,
       IF(X>Y, X, Y) AS Y1
FROM Functions
GROUP BY X1, Y1
HAVING COUNT(*) > 1
ORDER BY X1
