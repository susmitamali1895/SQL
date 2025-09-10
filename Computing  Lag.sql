CREATE DATABASE sqlsheet;
USE sqlsheet;
CREATE TABLE users (
user_id INT,
username VARCHAR(50),
country VARCHAR(50)
);

INSERT INTO users VALUES 
(1, 'Alice', 'India'),
(2, 'Bob', 'USA'),
(3, 'Charlie', 'UK'),
(4, 'David', 'India');

CREATE TABLE posts(
post_id INT,
user_id INT,
title VARCHAR(100),
views INT,
created_at DATE
);

INSERT INTO posts VALUES 
(101, 1, 'SQL Basics', 150, '2024-01-10'),
(102, 2, 'Advanced Joins', 200, '2024-02-05'),
(103, 1, 'Subqueries Explained', 180, '2024-02-20'),
(104, 3, 'Cross Joins Example', 90, '2024-03-15'),
(105, 4, 'Database Indexing', 120, '2024-03-25');

CREATE TABLE  tags(
tag_id INT,
tag_name VARCHAR(50)
);

INSERT INTO tags VALUES
(1, 'SQL'),
(2, 'Joins'),
(3, 'Subquery'),
(4, 'Database');

CREATE TABLE posttags(
post_id INT,
tag_id INT
);

INSERT INTO posttags VALUES
(101, 1),
(101, 4),
(102, 1),
(102, 2),
(103, 1),
(103, 3),
(104, 2),
(104, 1),
(105, 4);

SELECT * FROM users;
SELECT * FROM posts;
SELECT * FROM tags;

-- Show each post along with the views of the previous post (by date order

SELECT * FROM POSTS;
SELECT 
    post_id,
    title,
    created_at,
    views,
    LAG(views) OVER(ORDER BY created_at) AS previous_views
FROM posts;

-- Lag per user partially
-- Show each user’s posts with views compared to their own previous post
SELECT 
    p.post_id,
    u.username,
    p.title,
    p.created_at,
    p.views,
    LAG(p.views) OVER(PARTITION BY p.user_id ORDER BY p.created_at) AS previous_views
FROM posts p
JOIN users u ON p.user_id = u.user_id
ORDER BY u.username, p.created_at;

-- Common Table Expression (CTE) – average views per user
-- Find posts that have views above the user's average
WITH UserAvgViews AS (
    SELECT user_id, AVG(views) AS avg_views
    FROM posts
    GROUP BY user_id
)
SELECT 
    u.username,
    p.title,
    p.views,
    a.avg_views
FROM posts p
JOIN UserAvgViews a ON p.user_id = a.user_id
JOIN users u ON u.user_id = p.user_id
WHERE p.views > a.avg_views;

-- Cross join Example 
-- List all possible combinations of users and tags
SELECT 
    u.username,
    t.tag_name
FROM users u
CROSS JOIN tags t;

-- Subquery
SELECT 
    post_id,
    title,
    views,
    created_at
FROM posts
WHERE views = (SELECT MAX(views) FROM posts);

-- Window functions 
-- 1.Ranking posts by views (overall)
SELECT 
    post_id,
    title,
    views,
    RANK() OVER(ORDER BY views DESC) AS rank_by_views
FROM posts;

-- 2. Ranking posts by views per user
SELECT 
    u.username,
    p.title,
    p.views,
    RANK() OVER(PARTITION BY u.user_id ORDER BY p.views DESC) AS user_rank
FROM posts p
JOIN users u ON p.user_id = u.user_id;

-- 3: Running total of views over time
SELECT 
    post_id,
    title,
    created_at,
    views,
    SUM(views) OVER(ORDER BY created_at) AS running_total_views
FROM posts;

-- 4: LAG() to compare with previous post
SELECT 
    post_id,
    title,
    views,
    LAG(views, 1) OVER(ORDER BY created_at) AS previous_post_views
FROM posts;

-- 5: Average views per user (without collapsing rows)
SELECT 
    u.username,
    p.title,
    p.views,
    AVG(p.views) OVER(PARTITION BY u.user_id) AS avg_views_for_user
FROM posts p
JOIN users u ON p.user_id = u.user_id;










