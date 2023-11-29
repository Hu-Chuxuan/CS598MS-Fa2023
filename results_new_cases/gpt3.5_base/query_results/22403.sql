SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Parody%')
AND tb.startYear >= 1980
AND tb.primaryTitle != 'Airplane!'
AND tb.primaryTitle NOT IN ('Scary Movie')
ORDER BY tr.averageRating DESC
LIMIT 10