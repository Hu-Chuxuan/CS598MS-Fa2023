SELECT DISTINCT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE genres LIKE '%Action%' AND genres LIKE '%Comedy%'
AND tb.primaryTitle != '2012  (2009)'
ORDER BY tr.averageRating DESC
LIMIT 10