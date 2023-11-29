SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear = 2006
AND tb.primaryTitle != 'Click'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5