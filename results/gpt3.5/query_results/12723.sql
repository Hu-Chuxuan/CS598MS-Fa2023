SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Short%'
AND tr.numVotes > 1000
AND tr.averageRating >= 7.5
AND (tb.primaryTitle NOT IN ('Shutter Island', 'Drive'))
ORDER BY tr.averageRating DESC
LIMIT 5