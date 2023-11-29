SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Western%'
AND tb.startYear >= 1980
AND tb.startYear <= 1990
AND tb.primaryTitle != 'Young Guns'
ORDER BY tr.averageRating DESC
LIMIT 5