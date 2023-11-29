SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Thriller%'
AND tb.primaryTitle != 'Gone Girl'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5