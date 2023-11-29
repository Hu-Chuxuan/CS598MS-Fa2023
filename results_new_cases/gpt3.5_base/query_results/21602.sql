SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Thriller%' 
AND tb.startYear >= 2010
AND tb.startYear <= 2014
AND tb.primaryTitle <> 'Gone Girl'
ORDER BY tr.averageRating DESC
LIMIT 5