SELECT * FROM (
  SELECT title_basics.title_id, title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres, 
       AVG(title_ratings.averageRating) AS avg_rating, COUNT(title_ratings.tconst) AS num_votes
  FROM title_basics
  JOIN title_ratings ON title_basics.title_id = title_ratings.tconst
  WHERE title_basics.primaryTitle = 'Dumb and Dumber' OR title_basics.primaryTitle = 'Superbad'
  GROUP BY title_basics.title_id
) AS recommended_movies
WHERE avg_rating > (
  SELECT AVG(title_ratings.averageRating)
  FROM title_basics
  JOIN title_ratings ON title_basics.title_id = title_ratings.tconst
  WHERE title_basics.primaryTitle IN ('Talladega Nights: The Ballad of Ricky Bobby', 'Anchorman', 'Happy Gilmore')
)
AND num_votes > 1000
ORDER BY avg_rating DESC