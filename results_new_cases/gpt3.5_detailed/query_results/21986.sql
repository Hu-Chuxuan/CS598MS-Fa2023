SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND (tb.startYear = 2012 OR tb.startYear = 2013)
AND (tb.primaryTitle != 'The Possession' AND tb.primaryTitle != 'Evil Dead')
ORDER BY tr.averageRating DESC
LIMIT 10