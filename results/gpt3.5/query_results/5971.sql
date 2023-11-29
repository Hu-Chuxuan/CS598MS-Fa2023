SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Romance%'
AND tb.startYear >= 2000
AND tb.startYear <= 2010
AND tb.originalTitle NOT LIKE '%US%'
AND (tb.originalTitle LIKE '%Ireland%' OR tb.originalTitle LIKE '%Australia%')
AND tb.primaryTitle NOT IN ('Australia  (2008)', 'Leap Year  (2010)', 'P.S. I Love You  (2007)')
ORDER BY tr.averageRating DESC
LIMIT 5