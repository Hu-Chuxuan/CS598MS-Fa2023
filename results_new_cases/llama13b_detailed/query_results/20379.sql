SELECT tconst, primaryTitle, runtimeMinutes, genres
FROM title_basics
WHERE titleType ='movie' AND isAdult = 0 AND (
  SELECT AVG(rating)
  FROM title_ratings
  WHERE title_ratings.tconst = title_basics.tconst
) > (
  SELECT AVG(rating)
  FROM title_ratings
  WHERE title_ratings.tconst IN (SELECT tconst FROM title_basics WHERE titleType ='movie' AND isAdult = 0)
)
ORDER BY AVG(rating) DESC