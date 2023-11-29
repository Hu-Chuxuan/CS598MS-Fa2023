SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Crime%'
AND tb.tconst NOT IN ('Highlander  (1986)')
ORDER BY tr.averageRating DESC
LIMIT 1