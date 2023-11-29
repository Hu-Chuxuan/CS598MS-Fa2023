SELECT tb1.primaryTitle, tb1.startYear, tb1.runtimeMinutes, tb1.genres, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr on tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Comedy%'
AND tb1.primaryTitle != 'A Bad Moms Christmas'
AND tb1.startYear >= 2010
ORDER BY tr.averageRating DESC
LIMIT 5