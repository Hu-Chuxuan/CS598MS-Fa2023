SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.startYear >= 1980 AND tb.startYear <= 1989
AND tb.titleType = 'movie'
AND tb.tconst NOT IN ('tt0093409', 'tt0104291', 'tt0087262') 
ORDER BY tr.averageRating DESC
LIMIT 5