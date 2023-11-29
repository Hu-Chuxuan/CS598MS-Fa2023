SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Sci-Fi%'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear >= 1990
AND tb.startYear <= 2000
AND tr.averageRating > 7
AND tb.primaryTitle != 'Galaxy Quest'
ORDER BY tr.averageRating DESC
LIMIT 5