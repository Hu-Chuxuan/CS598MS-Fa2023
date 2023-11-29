SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE (genres LIKE '%Comedy%' OR genres LIKE '%Horror%')
AND (startYear > 2010 OR startYear < 1970)
AND primaryTitle NOT IN ('Dumb and Dumber', 'Zombieland', 'The Last House on the Left (1972)', 'It Follows', 'The Last House on the Left (2009)')
ORDER BY averageRating DESC
LIMIT 10