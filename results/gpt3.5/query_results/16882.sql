SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= YEAR(CURRENT_DATE) - 1
AND tb.genres LIKE '%Family%'
AND tb.isAdult = 0
AND tr.numVotes >= 1000
AND tb.tconst NOT IN ('tt3287556') -- excluding 'A Wrinkle in Time '
ORDER BY tr.averageRating DESC
LIMIT 5