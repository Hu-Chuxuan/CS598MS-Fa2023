SELECT tb1.primaryTitle, tb1.startYear, tb1.runtimeMinutes, tb1.genres, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Action%'
AND tb1.startYear >= 2000
AND tb1.startYear <= 2011
AND tb1.primaryTitle != 'Hanna'
ORDER BY tr.averageRating DESC
LIMIT 5