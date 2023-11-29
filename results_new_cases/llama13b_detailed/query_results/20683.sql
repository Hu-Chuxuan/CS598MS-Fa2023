SELECT * FROM (
  SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
       AVG(rating) AS avgRating, COUNT(*) AS numVotes
    FROM title_ratings
    JOIN title_basics ON title_ratings.tconst = title_basics.tconst
    WHERE titleType ='movie' AND isAdult = 0
    GROUP BY tconst
  ) AS titles
  JOIN name_basics ON titles.tconst = name_basics.nconst
  JOIN title_crew ON titles.tconst = title_crew.tconst
  JOIN title_principals ON titles.tconst = title_principals.tconst
  WHERE name_basics.primaryName LIKE '%Comedy%' AND name_basics.primaryName LIKE '%Action%'
  ORDER BY avgRating DESC, numVotes DESC