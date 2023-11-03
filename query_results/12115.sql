SELECT * FROM title_ratings t INNER JOIN ( SELECT distinct(titleId) from ( SELECT DISTINCT titleId as 'titleId', avg(rating), count(*) AS numVotes from rating WHERE title_type = "movie" AND rating > 6.0 GROUP BY titleId ) AS all_movies WHERE all_movies.numvotes >= 100) movies ON t.titleID=movies.titleid ORDER by t.avgrating DESC LIMIT 10