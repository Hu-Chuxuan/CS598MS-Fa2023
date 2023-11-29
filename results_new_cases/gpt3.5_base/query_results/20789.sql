SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Foul Play  (1977)', "National Lampoon's Vacation (1983)", "National Lampoon's Christmas Vacation (1989)")
ORDER BY tr.averageRating DESC
LIMIT 5