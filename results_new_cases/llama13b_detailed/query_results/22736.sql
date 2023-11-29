SELECT * FROM title_basics
WHERE titleType ='movie' AND genres LIKE '%Ghost%' AND runtimeMinutes > 90
AND (
  SELECT AVG(averageRating)
  FROM title_ratings
  WHERE title_ratings.tconst = title_basics.tconst
) > (
  SELECT AVG(averageRating)
  FROM title_ratings
  WHERE title_ratings.tconst IN (SELECT tconst FROM title_basics WHERE primaryName LIKE '%Disney%')
)
ORDER BY averageRating DESC, startYear DESC