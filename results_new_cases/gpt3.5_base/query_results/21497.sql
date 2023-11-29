SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.primaryTitle != 'Crash' AND tb.startYear = 2004
AND (tb.genres LIKE '%Drama%' OR tb.genres LIKE '%Crime%')
AND tr.averageRating > 7.5
ORDER BY tr.averageRating DESC
LIMIT 5