SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND tb.startYear >= 1990
AND (tb.primaryTitle != 'Scream' OR tb.primaryTitle != 'Scary Movie')
ORDER BY tr.averageRating DESC
LIMIT 10