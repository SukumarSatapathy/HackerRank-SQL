/*
--Author: @SukumarSatapathy
--MySQL

Write a query to print the pattern P(20).
Triangle using *
*/

SET @TEMP:=0; 
SELECT REPEAT('* ', @TEMP:= @TEMP + 1) 
FROM INFORMATION_SCHEMA.TABLES
WHERE @TEMP < 20;
