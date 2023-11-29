SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND NOT (tb.primaryTitle LIKE '%Saw%' AND tb.startYear = 2004)
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC
LIMIT 10