SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Horror%' OR genres LIKE '%Comedy%'
AND primaryTitle NOT IN ('Annabelle  (2014)', 'Insidious  (2011)', 'Superbad  (2007)', 'Girls Trip (2017)')
ORDER BY averageRating DESC
LIMIT 5