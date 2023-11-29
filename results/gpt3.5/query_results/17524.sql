SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
JOIN title_principals
ON title_basics.tconst = title_principals.tconst
JOIN name_basics
ON title_principals.nconst = name_basics.nconst
WHERE primaryName = 'Dwayne The Rock Johnson'
AND title_basics.titleType = 'movie'
AND startYear > 2000
AND primaryTitle NOT IN ('San Andreas  (2015)', 'The Rundown (2003)', 'Jumanji  (2017)')
GROUP BY title_basics.tconst
ORDER BY averageRating DESC
LIMIT 10