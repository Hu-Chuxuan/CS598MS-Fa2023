SELECT tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating
FROM title_basics tb1 
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Horror%' 
AND tb1.genres LIKE '%Comedy%'
AND tb1.startYear <= 1988 
AND tb1.tconst NOT IN ('tt0095444', 'tt116004', 'tt0368226', 'tt0087800')