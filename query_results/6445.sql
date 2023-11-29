SELECT * FROM ( SELECT DISTINCT (tconst), 
                               avg(averageRating)/numvotes AS 'Average Rating',
                                round((avg(averageRating)/numvotes*100))::numeric(10,2) AS '% Recommended By Users') AS recommendations
FROM ((title_basic INNER JOIN title_ratings ON (title_basics.title_id = title_ratings.tconst)))
WHERE title_type='Movie' AND isAdult=0
AND NOT EXISTS (SELECT * FROM (SELECT DISTINCT (tconst) FROM title_ratings WHERE averageRating < 6 OR averageRating > 8) AS badMovies)