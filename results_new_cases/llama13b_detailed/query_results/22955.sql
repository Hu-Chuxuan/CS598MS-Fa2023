SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE isAdult = 0  -- family friendly movies only
AND genres LIKE '%Animation%' -- user has shown interest in Animation movies
AND genres LIKE '%Comedy%' -- user has shown interest in Comedy movies
AND title_principals.category = 'actor' -- user has shown interest in movies with actors
AND title_ratings.averageRating > 6.5 -- user has shown preference for high-rated movies
AND title_ratings.numVotes > 1000 -- user has shown preference for popular movies

ORDER BY title_principals.primaryName, title_basics.startYear DESC