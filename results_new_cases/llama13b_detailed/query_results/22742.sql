SELECT tconst, primaryTitle, genres, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND genres LIKE '%Comedy%'
AND NOT EXISTS (SELECT 1 FROM title_principals WHERE category = 'writer' AND job = 'original story' AND title_principals.tconst = title_basics.tconst)
AND NOT EXISTS (SELECT 1 FROM title_principals WHERE category = 'writer' AND job ='screenplay' AND title_principals.tconst = title_basics.tconst)
AND NOT EXISTS (SELECT 1 FROM title_principals WHERE category = 'writer' AND job ='screenplay' AND title_principals.tconst = title_basics.tconst)
AND NOT EXISTS (SELECT 1 FROM title_ratings WHERE title_ratings.tconst = title_basics.tconst AND userRating IS NOT NULL)
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5