SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2022
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt0029463', 'tt0110912', 'tt0401792')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 1