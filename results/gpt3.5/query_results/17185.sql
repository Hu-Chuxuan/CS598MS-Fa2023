SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 2018
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Sci-Fi%'
AND tr.averageRating >= 7
AND tr.numVotes >= 5000
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5