SELECT tb1.primaryTitle, tb1.startYear, tr.averageRating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Comedy%'
AND tb1.startYear >= 2010
AND tb1.startYear <= 2020
AND tb1.tconst != 'tt2531344'
ORDER BY tr.averageRating DESC
LIMIT 5