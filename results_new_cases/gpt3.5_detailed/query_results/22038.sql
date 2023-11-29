SELECT tb1.primaryTitle, tb1.startYear, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Drama%' 
    AND tb1.startYear >= 1980 
    AND tb1.startYear <= 1990
    AND tb1.tconst != 'tt0088939'  -- exclude "The Color Purple (1985)"
ORDER BY tr.averageRating DESC
LIMIT 5