-- Creating schema and production table

DROP DATABASE IF EXISTS `copper_wire_production_test_1`;
CREATE DATABASE `copper_wire_production_test_1`;
USE `copper_wire_production_test_1`;

CREATE TABLE `production_log` (
	id INT AUTO_INCREMENT PRIMARY KEY,  -- Added 'id' column to serve as a primary key
	machine SMALLINT,					-- Machine number
    shift VARCHAR (10),					
    operator SMALLINT,					
    date DATE,							
    cable_failures SMALLINT,			
    cable_failure_downtime SMALLINT,	-- Measured in minutes
    Other_failures SMALLINT,			
    Other_failure_downtime SMALLINT		-- Also measured in minutes
);

-- Inserting data

INSERT INTO `production_log` VALUES
(1,1,'A',1,'2020/11/06',1,35,1,30),
(2,2,'A',2,'2020/11/06',1,10,3,150),
(3,2,'B',3,'2020/11/06',2,40,2,110),
(4,2,'A',2,'2020/11/07',5,120,1,80),
(5,2,'B',3,'2020/11/07',2,40,1,35),
(6,1,'A',4,'2020/11/08',0,0,1,40),
(7,1,'B',5,'2020/11/08',1,165,0,0),
(8,3,'A',6,'2020/11/08',1,30,0,0),
(9,3,'B',7,'2020/11/08',1,25,0,0),
(10,1,'A',1,'2020/11/09',1,40,1,95),
(11,4,'B',5,'2020/11/09',2,60,0,0),
(12,2,'A',6,'2020/11/09',3,80,0,0),
(13,2,'B',1,'2020/11/09',0,0,1,20),
(14,3,'B',8,'2020/11/09',2,60,0,0),
(15,5,'A',9,'2020/11/09',2,140,0,0),
(16,4,'B',5,'2020/11/10',2,40,0,0),
(17,3,'A',10,'2020/11/10',2,40,0,0),
(18,3,'B',8,'2020/11/10',2,60,1,20),
(19,2,'A',3,'2020/11/10',3,60,1,15),
(20,2,'B',7,'2020/11/10',2,30,0,0),
(21,6,'A',11,'2020/11/10',0,0,0,0),
(22,6,'B',12,'2020/11/10',0,0,0,0),
(23,7,'A',13,'2020/11/10',2,100,0,0),
(24,7,'B',14,'2020/11/10',2,105,0,0),
(25,5,'A',13,'2020/11/10',2,150,1,20),
(26,5,'B',14,'2020/11/10',1,50,0,0),
(27,8,'B',15,'2020/11/10',4,160,0,0),
(28,4,'A',4,'2020/11/12',2,45,0,0),
(29,4,'B',5,'2020/11/12',1,20,1,30),
(30,2,'B',6,'2020/11/12',0,0,1,480),
(31,3,'A',10,'2020/11/12',1,40,0,0),
(32,3,'B',16,'2020/11/12',1,30,0,0),
(33,6,'B',17,'2020/11/12',1,45,0,0),
(34,7,'A',9,'2020/11/12',1,25,0,0),
(35,7,'B',14,'2020/11/12',1,60,0,0),
(36,9,'A',18,'2020/11/12',0,0,1,80),
(37,4,'A',4,'2020/11/13',3,50,0,0),
(38,4,'B',5,'2020/11/13',1,30,0,0),
(39,2,'A',3,'2020/11/13',4,70,1,60),
(40,2,'B',6,'2020/11/13',0,0,2,160),
(41,3,'B',16,'2020/11/13',2,35,0,0),
(42,7,'B',14,'2020/11/13',0,0,1,60),
(43,5,'A',9,'2020/11/13',0,0,0,0),
(44,10,'A',19,'2020/11/13',0,0,1,25),
(45,11,'B',20,'2020/11/13',0,0,1,20),
(46,4,'A',4,'2020/11/14',1,20,0,0),
(47,1,'A',1,'2020/11/14',1,10,0,0),
(48,1,'B',21,'2020/11/14',1,120,0,0),
(49,2,'A',1,'2020/11/14',2,50,0,0),
(50,2,'B',6,'2020/11/14',3,75,0,0),
(51,3,'A',8,'2020/11/14',0,0,1,35),
(52,7,'A',9,'2020/11/14',1,55,0,0),
(53,7,'B',14,'2020/11/14',2,110,0,0),
(54,11,'B',20,'2020/11/14',0,0,9,155),
(55,12,'A',22,'2020/11/14',0,0,1,60),
(56,9,'A',18,'2020/11/14',1,25,0,0),
(57,1,'A',4,'2020/11/15',1,240,0,0),
(58,3,'A',8,'2020/11/15',3,100,1,30),
(59,3,'B',16,'2020/11/15',1,15,1,15),
(60,2,'A',7,'2020/11/15',1,20,0,0),
(61,2,'B',6,'2020/11/15',3,100,0,0),
(62,7,'B',14,'2020/11/15',1,35,0,0),
(63,5,'B',14,'2020/11/15',1,80,0,0),
(64,6,'A',12,'2020/11/15',0,0,1,60),
(65,11,'A',23,'2020/11/15',0,0,1,30),
(66,10,'B',24,'2020/11/15',0,0,1,105),
(67,2,'A',7,'2020/11/16',4,70,0,0),
(68,2,'B',3,'2020/11/16',3,80,0,0),
(69,5,'A',15,'2020/11/16',2,60,2,115),
(70,7,'B',14,'2020/11/16',1,30,0,0),
(71,6,'A',12,'2020/11/16',0,0,1,30),
(72,8,'B',13,'2020/11/16',3,175,0,0),
(73,13,'A',25,'2020/11/16',1,20,0,0),
(74,14,'A',26,'2020/11/10',3,65,0,0),
(75,15,'A',26,'2020/11/10',2,55,0,0),
(76,13,'B',27,'2020/11/13',1,30,0,0),
(77,16,'A',26,'2020/11/13',0,0,1,205),
(78,16,'B',27,'2020/11/13',0,0,1,300),
(79,13,'B',27,'2020/11/14',1,30,0,0),
(80,16,'B',27,'2020/11/14',1,60,1,60),
(81,14,'B',27,'2020/11/15',2,120,0,0),
(82,16,'A',28,'2020/11/15',0,0,1,180),
(83,15,'B',26,'2020/11/17',1,30,0,0),
(84,1,'A',1,'2020/11/17',0,0,1,30),
(85,1,'B',21,'2020/11/17',0,0,2,95),
(86,3,'A',8,'2020/11/17',1,30,0,0),
(87,3,'B',10,'2020/11/17',0,0,1,50),
(88,5,'A',9,'2020/11/17',1,50,0,0),
(89,7,'A',9,'2020/11/17',2,40,0,0),
(90,7,'B',14,'2020/11/17',2,100,0,0),
(91,5,'A',9,'2020/11/17',2,110,0,0),
(92,6,'A',12,'2020/11/17',0,0,1,45),
(93,8,'A',15,'2020/11/17',6,295,0,0),
(94,8,'B',29,'2020/11/17',4,180,1,95),
(95,10,'B',24,'2020/11/17',0,0,1,165),
(96,1,'A',1,'2020/11/18',1,60,0,0),
(97,1,'B',21,'2020/11/18',1,110,0,0),
(98,14,'B',12,'2020/11/18',1,40,0,0),
(99,2,'A',30,'2020/11/18',5,100,0,0),
(100,2,'B',3,'2020/11/18',0,0,1,135),
(101,3,'A',6,'2020/11/18',2,50,0,0),
(102,8,'A',31,'2020/11/18',5,225,1,120),
(103,8,'B',13,'2020/11/18',1,30,2,580),
(104,9,'A',18,'2020/11/18',0,0,3,145),
(105,10,'A',16,'2020/11/18',0,0,1,40),
(106,4,'B',4,'2020/11/19',2,40,0,0),
(107,1,'B',21,'2020/11/19',1,30,0,0),
(108,7,'A',9,'2020/11/19',3,105,0,0),
(109,7,'B',14,'2020/11/19',1,30,0,0),
(110,8,'A',31,'2020/11/19',0,0,1,400),
(111,8,'B',13,'2020/11/19',1,75,1,480),
(112,2,'A',30,'2020/11/19',4,90,0,0),
(113,2,'B',3,'2020/11/19',1,15,0,0),
(114,1,'A',1,'2020/11/20',2,175,0,0),
(115,1,'B',21,'2020/11/20',1,10,0,0),
(116,6,'A',1,'2020/11/20',3,95,0,0),
(117,12,'A',16,'2020/11/20',1,25,0,0),
(118,2,'A',30,'2020/11/20',1,30,0,0),
(119,3,'B',8,'2020/11/20',0,0,1,30),
(120,7,'B',14,'2020/11/20',0,0,2,90),
(121,8,'A',7,'2020/11/21',0,0,1,690),
(122,8,'B',13,'2020/11/21',0,0,1,80),
(123,9,'A',18,'2020/11/21',0,0,1,70),
(124,10,'B',24,'2020/11/21',0,0,1,30),
(125,2,'B',7,'2020/11/21',1,40,0,0),
(126,8,'A',31,'2020/11/21',4,220,2,275),
(127,8,'B',13,'2020/11/21',2,65,1,130),
(128,3,'A',6,'2020/11/21',1,25,0,0),
(129,3,'B',8,'2020/11/21',0,0,1,35),
(130,15,'B',26,'2020/11/21',1,15,0,0),
(131,6,'A',1,'2020/11/21',3,120,0,0),
(132,7,'A',9,'2020/11/21',1,35,0,0),
(133,7,'B',14,'2020/11/21',3,65,1,30),
(134,1,'A',1,'2020/11/21',2,85,0,0),
(135,7,'A',9,'2020/11/21',1,30,0,0),
(136,7,'B',14,'2020/11/21',1,55,0,0),
(137,16,'B',26,'2020/11/22',1,30,0,0),
(138,15,'A',27,'2020/11/22',1,30,0,0),
(139,15,'B',26,'2020/11/22',1,30,0,0),
(140,17,'A',27,'2020/11/22',1,60,0,0),
(141,3,'A',10,'2020/11/22',0,0,2,85),
(142,3,'B',8,'2020/11/22',0,0,1,45),
(143,2,'A',3,'2020/11/22',5,50,0,0),
(144,2,'B',7,'2020/11/22',2,40,0,0),
(145,5,'A',9,'2020/11/22',1,60,0,0),
(146,5,'B',14,'2020/11/22',3,155,0,0),
(147,2,'A',7,'2020/11/22',4,135,0,0),
(148,2,'B',13,'2020/11/22',4,210,0,0),
(149,10,'A',32,'2020/11/22',0,0,2,130);


-- Quick query to validate data

USE copper_wire_production_test_1;

SELECT *
FROM production_log;

/* The dataset has no duplicate records but contains multiple entries on the same date 
for certain columns. Due to the lack of additional information, they have been kept as individual rows.*/

SELECT machine, shift, operator, date, COUNT(*) AS count_multiple_entries
FROM copper_wire_production_test_1.production_log
GROUP BY machine, shift, operator, date
HAVING COUNT(*) > 1;


-- Count of rows

SELECT COUNT(*)
FROM copper_wire_production_test_1.production_log;


-- Checking the minimum and maximum dates in the dataset

SELECT 
	MAX(date) AS fecha_máxima,
    MIN(date) AS fecha_mínima
FROM copper_wire_production_test_1.production_log;


-- Total operators
SELECT 
	COUNT(DISTINCT operator) AS total_de_operadores
FROM copper_wire_production_test_1.production_log;


-- Total machines
SELECT 
	COUNT(DISTINCT machine) AS total_de_operadores
FROM copper_wire_production_test_1.production_log;

-- Total shifts
SELECT 
	COUNT(DISTINCT shift) AS total_de_turnos
FROM copper_wire_production_test_1.production_log;


-- Question 1: 
-- Question 1: Which shift has the best quality indicators?

SELECT 
	shift,
    AVG(cable_failures) AS avg_failures,
    AVG(cable_failure_downtime) AS avg_downtime,
    AVG(other_failures) AS avg_other_failures,
    AVG(other_failure_downtime) AS avg_other_failure_downtime
FROM copper_wire_production_test_1.production_log
GROUP BY shift;

/* Insights:
Shift A shows a higher average of failures directly related to cable production,
resulting in more downtime compared to Shift B. 
However, Shift A has a lower average of other failures and associated downtime compared to Shift B.

Recommendatioins:
It is recommended to look for the causes behind the high average of direct failures in Shift A. 
Additionally, it's important to analyze which indirect failures are most frequent in Shift B to prioritize specific improvements.
*/

-- Question 2: 
-- Which dates had the best and worst quality performance?


SELECT
	date,
    SUM(cable_failures) + SUM(other_failures) AS total_failures, 
    SUM(cable_failure_downtime) + SUM(Other_failure_downtime) AS total_downtime,
    COUNT(DISTINCT machine) AS total_machines
FROM copper_wire_production_test_1.production_log
GROUP BY date
ORDER BY date;

/* Insights:
November 10th showed the highest downtime (970 minutes), distributed across 9 machines. However, 
November 21st had a greater overall impact, with 29 failures leading to 2,095 minutes 
of downtime across the same 9 machines.

Recommendations:
Find the causes of the sustained increase in failures and downtime on these critical dates.
Prioritize analyzing factors that could have influenced these results, such as affected machines, operational methods, 
material quality, and possible external factors.
Assess if there were differences in shifts, maintenance conditions, or changes in workflow that explain the observed results.
*/


-- Question 3: 
-- Which machines have the best and worst performance?

SELECT
	machine,
    SUM(cable_failures) + SUM(other_failures) AS total_failures, 
    SUM(cable_failure_downtime) + SUM(Other_failure_downtime) AS total_downtime,
    COUNT(date)
FROM copper_wire_production_test_1.production_log
GROUP BY machine
ORDER BY total_failures ASC;

/*
Insights:
- Machine 17 had the lowest number of failures, recording only 1 failure and 60 minutes of downtime. 
- On the other hand, machine 2 had the highest number of failures, with a total of 79 failures, 
while machine 8 had the highest downtime, accumulating 4,275 minutes.

Recommendations:
- Analyze the maintenance records and availability of machines 2, 8, and 17 during the studied period.
- Evaluate the availability percentage of each machine to identify if differences are due to factors like inadequate maintenance, excessive usage, or operational issues.
- Consider implementing a real-time monitoring system to track both operational time and failure events for a more comprehensive view of performance.
*/


-- Question 4: 
-- Which operator had the lowest total downtime?

SELECT
    operator,
    SUM(cable_failure_downtime) + SUM(other_failure_downtime) AS total_downtime,
    ROUND(
        (SUM(cable_failure_downtime) + SUM(other_failure_downtime)) * 100.0 /
        (SELECT SUM(cable_failure_downtime) + SUM(other_failure_downtime) 
         FROM copper_wire_production_test_1.production_log),
        2
    ) AS downtime_percentage
FROM copper_wire_production_test_1.production_log
GROUP BY operator
ORDER BY total_downtime DESC
LIMIT 3;

/* Insights:
The three operators with the most downtime minutes were:

No. 13 with 2,095 minutes.
No. 31 with 1,240 minutes.
No. 14 with 1,055 minutes.
Together, these three operators accounted for 29.9% of the total downtime.

Recommendations:
Conduct a detailed evaluation of the types of stops and the factors causing them.
Consider implementing a retraining program or adjusting work methods to reduce downtime.
*/


-- Question 5: 
-- Which days of the week had the most downtime?

SELECT
    dayname(date) as day_of_week,
    ROUND(avg(cable_failure_downtime), 1) AS avg_cable_failure_downtime,
    ROUND(avg(other_failure_downtime), 1) AS avg_other_failure_downtime,
    SUM(cable_failure_downtime) + SUM(other_failure_downtime) AS total_downtime_minutes,
    COUNT(id) AS total_records
FROM copper_wire_production_test_1.production_log
GROUP BY dayname(date)
ORDER BY total_records DESC
;


/* Insights:
Saturdays, Sundays, and Tuesdays account for the highest total downtime minutes and records. The sum of these two days 
accounts for 54% of the recorded unproductive minutes. 
Tuesdays (64.8) and Mondays (62.7) have the highest averages for downtime due to cable failures, 
while Wednesdays (102) and Thursdays (86.5) average the highest downtime minutes due to other causes.
In contrast, Mondays have the highest accumulated downtime minutes (1,075), while Fridays only have 22 recorded incidents. 

Recommendations:
- Identify if the high numbers on Saturdays and Sundays are related to higher workload, 
maintenance issues, or external factors such as equipment overload.
- Conduct a detailed analysis of failure categories contributing to the high averages. This could include preventive inspections, 
improvements in operational methods, or additional training.
- Review whether the number of records per day is directly related to accumulated downtime. On days with fewer records (like Monday), 
it is important to verify if events are being properly documented.
*/
