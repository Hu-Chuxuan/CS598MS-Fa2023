SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Action%'
AND titleType = 'movie'
AND startYear > 2014
AND primaryTitle NOT IN ('Guardians of the Galaxy  (2014)', 'Guardians of the Galaxy Vol. 2 (2017)')
ORDER BY averageRating DESC
LIMIT 5