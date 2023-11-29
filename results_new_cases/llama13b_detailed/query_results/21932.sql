SELECT t.title_basics, t.title_ratings, n.name_basics
FROM title_basics t
JOIN name_basics n ON t.directors = n.nconst
WHERE t.titleType ='movie' AND t.startYear BETWEEN 1990 AND 2010
AND n.primaryProfession = 'director'
AND EXISTS (
  SELECT 1
  FROM title_ratings
  WHERE t.tconst = title_ratings.tconst
  AND numVotes > 1000
)
ORDER BY averageRating DESC