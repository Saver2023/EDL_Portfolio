/*
Question #1

Breaking Out Column
The addresses in this table are in a very strange format. We actually need them broken out 
into street address, city, state, and zip code, but currently it's pretty unusable.

Write a query to break out this column into street, city, state, and zip_code with those names exactly.
*/

SELECT 
  TRIM(SUBSTRING_INDEX(address, "-", 1)) AS street,
  TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(address, "-", 2), " ", -1)) AS city,
  TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(address, "-", 3), " ", -1)) AS state,
  TRIM(SUBSTRING_INDEX(address, "-", -1)) AS zip_code
FROM addresses;

+---------------+-------------+-------+----------+
|    street     |    city     | state | zip_code |
+---------------+-------------+-------+----------+
| 123 Main St   | Anytown     | CA    |    12345 |
| 456 Elm St    | Springfield | IL    |    67890 |
| 789 Oak Ave   | Newtown     | PA    |    23456 |
| 1010 Maple Dr | Greensboro  | NC    |    34567 |
| 1313 Pine St  | Seattle     | WA    |    45678 |
+---------------+-------------+-------+----------+


/*
Question #2

Investment Properties

A property investment company has bought several properties over the past 10 years. 
They want to know about how much profit they will make on each if they were to liquidate all of their assets.
They also want a running total of their profits starting with the cheapest property they purchased

Write a query which gives the property ID, profit/loss from each property, and running total of profit/loss.
Order the output on the cheapest to most expensive property they purchased.
*/

SELECT 
  property_id,
  estimated_sale_price - purchase_price AS profit_loss,
  SUM(estimated_sale_price - purchase_price) OVER(ORDER BY purchase_price) AS running_total
FROM investment_property;
  
  
+-------------+-------------+---------------+
| property_id | profit_loss | running_total |
+-------------+-------------+---------------+
|          15 |     2603200 |       2603200 |
|           9 |     2409800 |       5013000 |
|          11 |      555600 |       5568600 |
|           7 |       35500 |       5604100 |
|           2 |    -1722900 |       3881200 |
|           6 |     3026300 |       6907500 |
|           3 |     2052100 |       8959600 |
|           1 |     2071300 |      11030900 |
|          10 |     -436300 |      10594600 |
|          14 |     3407600 |      14002200 |
|           5 |    -1248000 |      12754200 |
|          13 |     2035700 |      14789900 |
|           8 |     1677400 |      16467300 |
|          12 |     1029400 |      17496700 |
|           4 |     -114700 |      17382000 |
+-------------+-------------+---------------+

