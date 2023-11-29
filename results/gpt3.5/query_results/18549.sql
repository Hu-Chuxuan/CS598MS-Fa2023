SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Romance%'
AND tr.averageRating >= 7
AND tb.primaryTitle NOT IN ('The Princess Bride', '13 Going on 30', 'Just Friends')
ORDER BY tr.numVotes DESC
LIMIT 5