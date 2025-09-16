CREATE DATABASE average ;
USE average ;
CREATE TABLE example1 (
review_id INT ,
user_id INT,
submit_date DATE,
product_id INT,
stars INT
);

INSERT INTO example1(review_id, user_id, submit_date, product_id, stars) VALUES
(6171,123, "2025-06-08", 50001, 4),
(7802, 265, "2025-06-10", 69852, 4),
(5293, 362, "2025-06-18", 50001, 3),
(4517, 981, "2025-07-05", 69852, 2),
(6352, 192, "2025-07-26", 69852, 3);

SELECT * FROM example1;

SELECT MONTH (submit_date) AS MTH, product_id AS product ROUND(AVG(stars),2) AS avg_stars
FROM example1
GROUP BY MONTH (submit_date), prduct_id
ORDER BY MTH, product;