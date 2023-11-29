SELECT * FROM (
  SELECT 
    t.tconst, 
    t.titleType, 
    t.primaryTitle, 
    t.originalTitle, 
    t.isAdult, 
    t.startYear, 
    t.endYear, 
    t.runtimeMinutes, 
    t.genres, 
    AVG(r.rating) AS averageRating, 
    COUNT(r.titleId) AS numVotes 
  FROM title_basics t 
  JOIN title_ratings r ON t.tconst = r.titleId 
  WHERE t.primaryTitle IN ('The Lord of the Rings', 'Scarface') 
  GROUP BY t.tconst 
) AS recommendedTitles 
WHERE averageRating > 5 AND numVotes > 100