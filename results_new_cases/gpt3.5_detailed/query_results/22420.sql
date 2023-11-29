SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 1970
AND tb.genres LIKE '%Comedy%'
AND tr.numVotes > 1000
AND tb.tconst NOT IN ('tt0384642', 'tt0075148')
ORDER BY tr.averageRating DESC
LIMIT 10