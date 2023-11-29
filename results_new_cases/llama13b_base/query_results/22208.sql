SELECT title_basics.title, title_basics.primaryTitle, title_basics.genres, name_basics.primaryName, title_crew.directors, title_principals.characters
FROM title_basics
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.isAdult = '0' -- exclude adult movies
AND title_basics.startYear >= 2000 -- exclude movies released before 2000
AND title_basics.endYear <= 2020 -- exclude movies released after 2020
AND title_basics.runtimeMinutes > 60 -- exclude short movies
AND title_basics.genres LIKE '%adventure%' -- exclude movies that are not adventure
AND title_ratings.averageRating > 6.5 -- exclude movies with low ratings
AND NOT EXISTS (
  SELECT 1 FROM title_principals
  WHERE title_principals.tconst = title_basics.tconst AND title_principals.category = 'actor' AND title_principals.job = 'director'
) -- exclude movies that have the same director as one of the user's preferred movies

ORDER BY title_basics.startYear, title_basics.runtimeMinutes, title_basics.averageRating DESC