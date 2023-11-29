SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres, 
       COUNT(DISTINCT u.user_id) AS numRatings, AVG(u.rating) AS averageRating
    FROM title_basics t
    JOIN title_ratings r ON t.tconst = r.tconst
    JOIN users u ON r.user_id = u.user_id
   WHERE t.titleType ='movie' AND t.isAdult = 0
   GROUP BY t.tconst
) AS recommendedTitles
WHERE exists (
  SELECT 1 FROM users_preferences up
  JOIN title_basics t ON up.title_id = t.tconst
  WHERE up.user_id = <current_user_id>
  AND t.titleType ='movie'
  AND t.isAdult = 0
)
AND recommendedTitles.averageRating > (
  SELECT AVG(rating)
  FROM users_preferences up
  JOIN title_basics t ON up.title_id = t.tconst
  WHERE up.user_id = <current_user_id>
  AND t.titleType ='movie'
  AND t.isAdult = 0
)
ORDER BY recommendedTitles.averageRating DESC