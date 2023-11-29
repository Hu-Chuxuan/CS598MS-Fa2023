SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Action%' OR genres LIKE '%Comedy%' OR genres LIKE '%Horror%'
AND startYear > 1974
AND averageRating > 7
AND primaryTitle NOT IN ('Spy (2015)', 'Ghostbusters (2016)', 'Young Frankenstein (1974)')
ORDER BY averageRating DESC
LIMIT 10