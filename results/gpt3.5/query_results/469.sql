SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2002
AND tb.genres LIKE '%Comedy%'
AND tr.averageRating >= 6.5
AND tb.primaryTitle NOT IN ('Not Another Teen Movie (2001)', 'Scary Movie (2000)')
ORDER BY tr.numVotes DESC
LIMIT 1