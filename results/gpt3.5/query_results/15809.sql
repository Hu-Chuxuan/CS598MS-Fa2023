SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE primaryName = 'Channing Tatum'
AND titleType = 'movie'
AND primaryTitle != '21 Jump Street'
AND startYear <= 2012
AND genres LIKE '%Comedy%'
ORDER BY averageRating DESC
LIMIT 5