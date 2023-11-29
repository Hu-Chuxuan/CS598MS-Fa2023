SELECT DISTINCT tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.startYear > 2010
AND tb.startYear < 2014
AND (tb.primaryTitle = 'The Possession' OR tb.primaryTitle = 'Evil Dead')
AND tr.averageRating > 7
ORDER BY tr.averageRating DESC
LIMIT 10