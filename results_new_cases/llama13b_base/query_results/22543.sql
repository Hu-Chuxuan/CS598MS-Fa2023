SELECT * FROM (
  SELECT t.title_id, t.title, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
       AVG(r.rating) AS averageRating, COUNT(r.title_id) AS numVotes
  FROM title_basics t
  JOIN title_ratings r ON t.title_id = r.title_id
  WHERE t.title LIKE '%Will Ferrell%'
  GROUP BY t.title_id
) AS recommended_movies
WHERE numVotes > (
  SELECT AVG(numVotes)
  FROM recommended_movies
) * 2 + 1