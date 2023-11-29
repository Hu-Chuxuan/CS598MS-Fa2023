SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tr.numVotes > 1000
AND tb.genres LIKE '%Romance%'
ORDER BY tr.averageRating DESC
LIMIT 5