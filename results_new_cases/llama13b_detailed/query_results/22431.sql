SELECT * FROM (
  SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
       AVG(rating) AS avgRating, COUNT(*) AS numVotes
    FROM title_ratings
    JOIN title_basics ON title_ratings.tconst = title_basics.tconst
    WHERE titleType ='movie' AND isAdult = 0
    GROUP BY tconst
  ) AS top_movies
  JOIN name_basics ON top_movies.tconst = name_basics.nconst
  JOIN title_crew ON top_movies.tconst = title_crew.tconst
  JOIN title_principals ON top_movies.tconst = title_principals.tconst
  WHERE title_principals.category = 'actor'
  AND title_principals.job = 'actor'
  AND title_basics.primaryProfession LIKE '%actor%'
  AND title_ratings.numVotes > 1000
  AND AVG(rating) > 6
  AND EXISTS (
    SELECT 1
    FROM title_ratings
    WHERE title_ratings.tconst = top_movies.tconst
    AND title_ratings.user_id = <USER_ID>
  )
  AND NOT EXISTS (
    SELECT 1
    FROM title_ratings
    WHERE title_ratings.tconst = top_movies.tconst
    AND title_ratings.user_id = <USER_ID>
    AND rating = 1
  )
  ORDER BY avgRating DESC, numVotes DESC
LIMIT 10