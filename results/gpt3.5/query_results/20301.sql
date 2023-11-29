SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Crime%' 
AND tb.startYear >= 1990 
AND tb.titleType = 'movie'
AND tb.primaryTitle NOT IN ('Casino', 'Goodfellas', 'Godfather')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 1