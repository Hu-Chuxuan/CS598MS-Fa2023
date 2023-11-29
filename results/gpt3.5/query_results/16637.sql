SELECT tb.primaryTitle AS recommendation_title,
       tb.startYear AS recommendation_year,
       tb.genres AS recommendation_genres,
       tr.averageRating AS recommendation_rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND tb.primaryTitle NOT IN ('Crimson Peak (2015)', 'Mama  (2013)', 'Sinister 2 (2015)', 'Sinister  (2012)')
AND tb.startYear >= 2010
ORDER BY tr.averageRating DESC
LIMIT 5