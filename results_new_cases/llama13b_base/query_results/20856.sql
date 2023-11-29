SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres, 
  AVG(r.rating) AS avg_rating, COUNT(r.title_id) AS num_votes
  FROM title_basics t
  JOIN title_ratings r ON t.tconst = r.title_id
  WHERE t.primaryTitle = 'Get Out'
  GROUP BY t.tconst
) AS recommended_movies
WHERE num_votes > 1000
ORDER BY avg_rating DESC