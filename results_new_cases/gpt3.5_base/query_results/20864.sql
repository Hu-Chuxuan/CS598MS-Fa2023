SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND tb.primaryTitle NOT IN ('It (1990)', 'Scary Movie (2000)', 'Get Out (2017)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5