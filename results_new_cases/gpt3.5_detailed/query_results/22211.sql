SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2000
AND tb.primaryTitle NOT IN ('American Outlaws (2001)', 'Desperado  (1995)', 'The Magnificent Seven  (2016)', 'True Grit  (2010)')
ORDER BY tr.averageRating DESC
LIMIT 5