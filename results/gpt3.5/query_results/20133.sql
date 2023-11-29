SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE primaryName = 'Bruce Willis'
AND titleType = 'movie'
AND primaryTitle != 'The Fifth Element'
AND startYear >= 1980
AND genres LIKE '%Action%'
ORDER BY averageRating DESC
LIMIT 5