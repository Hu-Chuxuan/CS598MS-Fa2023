SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Sci-Fi%' 
AND tb.genres LIKE '%Comedy%'
AND tb.startYear = 1999
ORDER BY tr.averageRating DESC
LIMIT 10