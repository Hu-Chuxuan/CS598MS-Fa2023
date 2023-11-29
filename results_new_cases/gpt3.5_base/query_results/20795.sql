SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.primaryTitle NOT IN ('Doctor Strange  (2016)', 'Iron Man  (2008)', 'Spider-Man  (2002)')
ORDER BY tr.averageRating DESC
LIMIT 10