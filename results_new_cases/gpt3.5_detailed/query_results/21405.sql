SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Crime%'
AND primaryTitle NOT IN ('Citizen Kane (1941)', 'The Wizard of Oz  (1939)', 'Psycho  (1960)')
ORDER BY averageRating DESC
LIMIT 5