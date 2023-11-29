SELECT * FROM (
  SELECT title_basics.tconst, title_basics.titleType, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres,
       title_ratings.averageRating, title_ratings.numVotes
  FROM title_basics
  JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
  WHERE title_basics.titleType ='movie' AND title_basics.isAdult = 0
) AS recommended_movies
WHERE exists (
  SELECT 1
  FROM name_basics
  JOIN title_principals ON name_basics.nconst = title_principals.nconst
  WHERE name_basics.primaryProfession = 'actor' AND title_principals.category = 'actor'
  AND title_principals.job = 'actress'
  AND name_basics.birthYear = 1977
)
AND recommended_movies.runtimeMinutes > 90
AND recommended_movies.genres LIKE '%horror%'
ORDER BY recommended_movies.averageRating DESC, recommended_movies.numVotes DESC