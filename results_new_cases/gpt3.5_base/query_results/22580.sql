SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.isAdult = 0
AND tr.averageRating >= 7
AND tb.primaryTitle NOT IN ('Super Troopers (2001)', 'American Pie  (1999)')
ORDER BY tr.averageRating DESC
LIMIT 5