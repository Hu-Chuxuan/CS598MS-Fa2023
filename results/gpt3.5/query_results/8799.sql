SELECT tb1.primaryTitle, tb1.startYear, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Comedy%'
AND tb1.startYear <= 2022
AND tb1.tconst NOT IN ('tt0116487')
ORDER BY tr.averageRating DESC
LIMIT 5