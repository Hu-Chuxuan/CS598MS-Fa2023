SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE primaryName = 'Will Smith' AND titleType = 'movie'
AND primaryTitle NOT IN ('Suicide Squad', 'I, Robot')
ORDER BY averageRating DESC