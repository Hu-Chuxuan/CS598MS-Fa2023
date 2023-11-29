SELECT * FROM title_basics
WHERE genres LIKE '%Comedy%' AND runtimeMinutes < 2 AND tconst NOT IN (SELECT tconst FROM title_ratings WHERE numVotes > 1000)
UNION
SELECT * FROM title_basics
WHERE genres LIKE '%Drama%' AND runtimeMinutes > 2 AND tconst NOT IN (SELECT tconst FROM title_ratings WHERE numVotes > 1000)
UNION
SELECT * FROM title_basics
WHERE genres LIKE '%Romance%' AND runtimeMinutes < 2 AND tconst NOT IN (SELECT tconst FROM title_ratings WHERE numVotes > 1000)

This query will SELECT all movies that are comedies, dramas, or romantic movies, have a runtime of less than 2 hours, and have not been highly rated by a large number of users. The movies will be recommended based on the user's input and historical preferences