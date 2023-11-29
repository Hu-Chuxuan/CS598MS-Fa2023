SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%' AND genres NOT LIKE '%Slapstick%'
AND primaryTitle NOT IN ('Memphis Belle  (1990)', 'Black Hawk Down  (2002)')
AND startYear <= 2002
ORDER BY averageRating DESC
LIMIT 5