SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' 
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Adventure%'
AND tb.startYear > 2000
AND (tb.primaryTitle NOT IN ('Edward Scissorhands (1990)', 'Blow  (2001)'))
ORDER BY tr.averageRating DESC
LIMIT 5