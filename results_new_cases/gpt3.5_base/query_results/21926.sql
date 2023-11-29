SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear <= 2005
AND tb.tconst NOT IN ('tt0029442', 'tt0110912', 'tt0401792')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 1