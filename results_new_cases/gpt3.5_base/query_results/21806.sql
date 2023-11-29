SELECT tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating 
FROM title_basics tb1 
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Science Fiction%' 
AND tb1.startYear = 2016
AND (tb1.primaryTitle != 'Arrival' OR tb1.startYear != 2016)
AND tb1.primaryTitle NOT IN ('Tropic Thunder', 'Eyes Wide Shut')
ORDER BY tr.averageRating DESC
LIMIT 5