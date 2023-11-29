SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Horror%' OR tb.genres LIKE '%Comedy%')
AND tb.primaryTitle NOT IN ('Annabelle  (2014)', 'Insidious  (2011)', 'Superbad  (2007)', 'Girls Trip (2017)')
ORDER BY tr.averageRating DESC
LIMIT 5