SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear > 2017
AND tb.primaryTitle != 'Father Figures'
ORDER BY tr.averageRating DESC
LIMIT 1