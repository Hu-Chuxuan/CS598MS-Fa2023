SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' 
AND tb.startYear >= 1990
AND tb.tconst != 'tt0117060'  -- exclude Mission: Impossible (1996)
ORDER BY tr.averageRating DESC
LIMIT 5