SELECT t1.* FROM
( SELECT * from title_basic WHERE title_type = "movie" AND year BETWEEN? &&? ) AS t1 INNER JOIN
( SELECT rating, count(*) as votes FROM title_rating GROUP BY rating ORDER by vote DESC LIMIT 6)AS ratings ON t1.title_id= ratings.title_id