SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres NOT LIKE '%Musical%'
AND tb.titleType = 'movie'
AND tb.startYear >= 1980
AND tr.numVotes > 1000
AND tb.primaryTitle != 'A Christmas Story (1983)'
ORDER BY tr.averageRating DESC
LIMIT 5