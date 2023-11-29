SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE primaryName IN ('Alfred Hitchcock', 'Vincent Price')
AND titleType = 'movie'
AND startYear <= 1962
AND genres LIKE '%Thriller%'
AND primaryTitle <> 'Whatever Happened to Baby Jane? (1962)'
ORDER BY averageRating DESC
LIMIT 5