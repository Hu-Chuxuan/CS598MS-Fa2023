SELECT * FROM (
  SELECT tconst, titleType, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
  AVG(rating) AS avg_rating, COUNT(DISTINCT nconst) AS num_votes
  FROM title_ratings
  WHERE titleType ='movie' AND originalTitle = 'Fight Club' AND startYear = 1999
  GROUP BY tconst
) AS recommended_movies
WHERE num_votes > 100 AND avg_rating > 7.5
AND NOT EXISTS (
  SELECT 1 FROM title_ratings
  WHERE tconst = recommended_movies.tconst AND nconst = ANY(user_preferences)
)
ORDER BY avg_rating DESC