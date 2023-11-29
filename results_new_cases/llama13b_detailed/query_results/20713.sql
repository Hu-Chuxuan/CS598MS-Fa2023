SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
       AVG(rating) AS avgRating, 
       COUNT(*) AS numVotes
  FROM title_basics
  JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
  JOIN name_basics ON title_basics.directors = name_basics.nconst
 WHERE genres LIKE '%Action%' AND genres LIKE '%Comedy%' AND genres LIKE '%Click Flicks%'
   AND title_ratings.numVotes > 1000
 GROUP BY tconst
 HAVING avgRating > 7 AND numVotes > 1000
 ORDER BY avgRating DESC