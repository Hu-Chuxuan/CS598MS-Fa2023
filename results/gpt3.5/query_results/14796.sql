SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE primaryTitle != 'The Wedding Planner'
AND lower(primaryName) LIKE '%jennifer lopez%'
AND primaryTitle NOT IN ('Black Panther', 'The Wedding Planner')
AND genres LIKE '%Romance%'
ORDER BY averageRating DESC
LIMIT 5