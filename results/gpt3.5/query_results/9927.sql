SELECT primaryTitle, genres, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE primaryName = 'Jared Leto'
AND category = 'actor'
AND primaryTitle NOT IN ('Suicide Squad  (2016)', 'Girl, Interrupted  (1999)')
AND titleType = 'movie'
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5