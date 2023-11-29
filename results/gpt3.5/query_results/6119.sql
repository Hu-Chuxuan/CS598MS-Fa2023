SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' OR tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2010
AND tr.averageRating >= 7.0
AND tr.numVotes >= 1000
AND tb.tconst NOT IN ('tt1431045')
LIMIT 10