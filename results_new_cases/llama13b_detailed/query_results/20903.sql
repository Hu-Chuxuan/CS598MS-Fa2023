SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
       AVG(rating) AS avgRating, 
       COUNT(*) AS numVotes
  FROM title_basics
  JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
  JOIN name_basics ON title_ratings.nconst = name_basics.nconst
 WHERE titleType ='movie' AND isAdult = 0
   AND (genres LIKE '%Comedy%' OR genres LIKE '%Romance%')
   AND (primaryTitle LIKE '%Zohan%' OR primaryTitle LIKE '%Click%')
GROUP BY tconst
HAVING AVG(rating) > (SELECT AVG(rating) FROM title_ratings WHERE nconst IN (SELECT nconst FROM name_basics WHERE primaryName = 'Adam Sandler'))