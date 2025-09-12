SELECT * FROM sqlanalysisoftitanic.titanic;

SELECT COUNT(*) AS total_passangers ,SUM(CASE WHEN Survived=1 THEN 1 ELSE 0 END) AS survival_count, ROUND(100.0 * SUM(CASE WHEN Survived =1 THEN 1 ELSE 0 END)/COUNT(*),2 AS survival_rate_percen) FROM titanic;


