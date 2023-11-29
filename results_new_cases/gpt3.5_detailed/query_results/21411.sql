SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear >= 1980 AND tb.startYear <= 1989
AND tb.titleType = 'movie'
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC
LIMIT 10