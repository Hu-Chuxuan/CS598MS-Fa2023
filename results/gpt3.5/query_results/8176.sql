SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE primaryName = 'Kevin James'
AND primaryTitle = 'True Memoirs of an International Assassin'
AND primaryTitle != 'The Waterboy'
AND titleType = 'movie'
AND startYear >= 1998
ORDER BY averageRating DESC
LIMIT 5