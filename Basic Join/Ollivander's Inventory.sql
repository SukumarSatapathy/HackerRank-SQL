/* 
--Author: @SukumarSatapathy
--MySQL

Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.
Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age.
Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. 
If more than one wand has same power, sort the result in order of descending age. */

SELECT a.id, b.age, a.coins_needed, a.power 
FROM wands a 
JOIN wands_property b ON a.code = b.code 
WHERE b.is_evil = 0 AND a.coins_needed = (SELECT Min(a1.coins_needed) 
                                          FROM wands a1 
                                          JOIN wands_property b1 ON a1.code = b1.code 
                                          WHERE b.age = b1.age AND a.power = a1.power) 
ORDER  BY a.power DESC, b.age DESC; 
