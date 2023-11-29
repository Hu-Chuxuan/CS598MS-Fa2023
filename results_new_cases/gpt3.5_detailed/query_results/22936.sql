SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2010
AND tb.startYear <= 2018
AND tb.primaryTitle != 'The Other Woman'
ORDER BY tr.averageRating DESC
LIMIT 5