SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE title_basics.titleType = 'movie'
AND name_basics.primaryName = 'Robin Williams'
AND startYear >= 2000
AND startYear <= 2015
AND primaryTitle NOT IN ('Minority Report', 'The Conjuring', 'One Hour Photo', 'Memento', 'Shutter Island', 'The Gift')
ORDER BY averageRating DESC
LIMIT 5