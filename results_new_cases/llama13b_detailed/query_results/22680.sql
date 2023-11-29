SELECT * FROM title_basics
WHERE titleType ='movie' AND isAdult = 0 AND (genres LIKE '%Animation%' OR genres LIKE '%Comedy%' OR genres LIKE '%Family%')
AND NOT EXISTS (SELECT * FROM title_ratings WHERE title_ratings.tconst = title_basics.tconst AND numVotes > 1000)

UNION

SELECT * FROM title_basics
WHERE titleType ='movie' AND isAdult = 0 AND (genres LIKE '%Animation%' OR genres LIKE '%Comedy%' OR genres LIKE '%Family%')
AND EXISTS (SELECT * FROM title_ratings WHERE title_ratings.tconst = title_basics.tconst AND numVotes > 1000)
AND NOT EXISTS (SELECT * FROM title_principals WHERE title_principals.nconst = title_basics.primaryName)

ORDER BY startYear DESC, runtimeMinutes ASC