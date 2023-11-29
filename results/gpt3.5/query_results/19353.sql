SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Action%' OR tb.genres LIKE '%Comedy%') 
AND tb.startYear <= 2018
AND tb.primaryTitle NOT IN ('Black Panther (2018)', 'Doctor Strange  (2016)', 'Kick-Ass  (2010)')
ORDER BY tr.averageRating DESC
LIMIT 10