SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.originalTitle = 'Crazy, Stupid, Love'
AND tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Romance%'
AND tb.tconst != 'tt1570728'
ORDER BY tr.averageRating DESC
LIMIT 10