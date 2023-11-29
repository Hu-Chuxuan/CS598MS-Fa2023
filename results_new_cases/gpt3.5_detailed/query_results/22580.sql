SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.isAdult = 0
AND (tb.primaryTitle NOT LIKE '%rated R%' OR tb.primaryTitle NOT LIKE '%R-rated%')
AND tb.primaryTitle NOT IN ('Super Troopers (2001)', 'American Pie  (1999)')
ORDER BY tr.averageRating DESC
LIMIT 1