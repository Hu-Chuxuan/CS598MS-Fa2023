SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%'
AND (tb.primaryTitle != 'Total Recall' OR tb.primaryTitle != 'True Lies')
AND tb.startYear > 1990
ORDER BY tr.averageRating DESC
LIMIT 5