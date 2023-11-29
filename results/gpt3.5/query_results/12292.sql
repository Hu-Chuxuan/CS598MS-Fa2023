SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear > 1999
AND tb.primaryTitle != 'Project X'
ORDER BY tr.averageRating DESC
LIMIT 5