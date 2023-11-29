SELECT tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Action%' OR tb1.genres LIKE '%Thriller%'
AND tb1.startYear > 1981
AND tb1.startYear < 1996
AND tb1.tconst NOT IN ('tt0110413', 'tt0088247')
ORDER BY tr.averageRating DESC
LIMIT 5