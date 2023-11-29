SELECT tb1.primaryTitle, tb1.startYear, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Sci-Fi%'
AND tb1.startYear >= 2010
AND tb1.tconst <> 'tt2543164'  -- Exclude Arrival (2016)
AND tb1.tconst NOT IN ('tt0942385', 'tt0120663')  -- Exclude Tropic Thunder (2008) and Eyes Wide Shut (1999)
ORDER BY tr.averageRating DESC
LIMIT 10