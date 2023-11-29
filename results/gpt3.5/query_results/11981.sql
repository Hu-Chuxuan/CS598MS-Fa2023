SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear = 2000
AND tb.primaryTitle LIKE '%Cabin Fever%'
ORDER BY tr.averageRating DESC
LIMIT 5