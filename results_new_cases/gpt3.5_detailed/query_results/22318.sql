SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Drama%'
AND tb.startYear >= 2010
AND tr.numVotes >= 1000
ORDER BY tr.averageRating DESC
LIMIT 10