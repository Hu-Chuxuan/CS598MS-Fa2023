SELECT tb1.primaryTitle, tb1.startYear, tb1.runtimeMinutes, tb1.genres, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Comedy%'
AND tb1.startYear >= 1980
AND tb1.startYear <= 1990
AND tr.averageRating >= 6
AND tb1.tconst NOT IN ('tt0098627', 'tt0087469', 'tt0088182')
ORDER BY tr.averageRating DESC, tb1.startYear DESC
LIMIT 5