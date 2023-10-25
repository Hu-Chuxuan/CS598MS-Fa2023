SELECT t.* FROM title_basics AS t JOIN
( SELECT DISTINCT tc.title_id as "movie", avg(rating) as rating
FROM title_ratings AS tr LEFT OUTER JOIN title_crew AS tc ON tc.title_id = tr.`movie` WHERE rated >.5 GROUP BY tc.title_id ) movies USING (title_id)