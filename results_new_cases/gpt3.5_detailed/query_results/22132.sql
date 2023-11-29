SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear < 2007
AND tb.genres LIKE '%Action%'
AND tr.averageRating >= 6.5
AND tr.numVotes > 500
ORDER BY tr.averageRating DESC
LIMIT 10