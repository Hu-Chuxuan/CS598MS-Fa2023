SELECT title_basics.title, title_basics.primaryTitle, title_ratings.averageRating, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.titleType ='movie'
AND title_ratings.averageRating > 7
AND title_crew.directors LIKE '%John Malkovich%'
AND title_principals.characters LIKE '%John Malkovich%'
AND title_basics.startYear = 1999
AND title_basics.endYear = 1999
AND title_basics.runtimeMinutes > 90
AND title_basics.genres LIKE '%Comedy%'

AND (title_basics.primaryTitle NOT IN (SELECT nconst FROM name_basics WHERE birthYear = 1996)
OR title_basics.primaryTitle NOT IN (SELECT nconst FROM name_basics WHERE deathYear = 2018))

AND (SELECT COUNT(*) FROM title_ratings WHERE tconst = title_basics.tconst AND numVotes > 10000) > 1

ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC