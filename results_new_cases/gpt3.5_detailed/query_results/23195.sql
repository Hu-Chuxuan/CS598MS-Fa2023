SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%' 
AND tb.startYear = 1999 
AND tb.tconst != 'tt0137523' 
AND tb.tconst NOT IN ('tt0120903', 'tt2184339', 'tt0936501')
ORDER BY tr.averageRating DESC
LIMIT 1