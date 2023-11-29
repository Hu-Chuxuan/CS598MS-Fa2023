SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_ratings.averageRating, name_basics.primaryName, title_crew.directors, title_principals.category, title_principals.job
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.isAdult = 0 -- exclude adult movies
AND title_ratings.numVotes > 1000 -- only consider movies with more than 1000 votes
AND title_basics.genres LIKE '%children%' -- only consider movies with "children" in their genres
AND NOT EXISTS (SELECT 1 FROM title_ratings WHERE title_ratings.tconst = title_basics.tconst AND title_ratings.averageRating > 8) -- exclude movies with high ratings (>8) that the user has already seen
AND title_basics.startYear > 2000 -- only consider movies released after 2000
AND title_basics.endYear < 2020 -- only consider movies released before 2020
AND name_basics.birthYear > 1980 -- only consider movies with directors and writers born after 1980
AND name_basics.deathYear < 2010 -- only consider movies with directors and writers died before 2010
AND title_principals.category = 'actor' -- only consider movies with actors in the main cast
AND title_principals.job = 'lead' -- only consider movies with lead actors

WHERE title_basics.title LIKE '%The Lord of the Rings%' OR title_basics.title LIKE '%Thor%'