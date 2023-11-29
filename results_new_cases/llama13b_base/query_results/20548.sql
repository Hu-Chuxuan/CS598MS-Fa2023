SELECT * FROM (
  SELECT t.*, 
       AVG(rating) OVER (PARTITION BY title_basics.primaryTitle ORDER BY numVotes DESC) AS avg_rating
  FROM title_basics
  JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
  JOIN name_basics ON title_basics.primaryTitle = name_basics.primaryName
  WHERE title_basics.titleType = 'drama'
) AS top_dramas
WHERE avg_rating > (SELECT AVG(rating) FROM title_ratings WHERE tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle = 'Me Before You'))
ORDER BY avg_rating DESC