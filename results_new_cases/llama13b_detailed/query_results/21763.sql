SELECT tconst, primaryTitle, genres, averageRating, numVotes
FROM title_basics
WHERE titleType ='movie' AND isAdult = 0 AND genres LIKE '%Fantasy%'
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.primaryTitle = name_basics.primaryName
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE name_basics.primaryProfession LIKE '%Actor%'
AND title_ratings.numVotes > 1000
AND title_principals.category = 'actor'
AND title_crew.directors LIKE '%Peter Jackson%'
OR title_crew.writers LIKE '%Peter Jackson%'
ORDER BY averageRating DESC, numVotes DESC