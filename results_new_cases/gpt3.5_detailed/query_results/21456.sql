SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' OR tb.genres LIKE '%Fantasy%'
AND tb.startYear >= 1980
AND tb.startYear <= 1990
AND tb.primaryTitle != 'Highlander'
ORDER BY tr.averageRating DESC
LIMIT 5