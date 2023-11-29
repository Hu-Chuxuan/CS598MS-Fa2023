SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Horror%'
AND primaryTitle NOT IN ('Blair Witch  (2016)', 'The Blair Witch Project (1999)', 'V/H/S')
ORDER BY averageRating DESC
LIMIT 5