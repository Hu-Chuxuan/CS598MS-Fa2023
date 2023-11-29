SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres, 
       AVG(r.rating) AS avgRating, COUNT(r.rating) AS numVotes
    FROM title_basics t
    JOIN title_ratings r ON t.tconst = r.tconst
    WHERE t.primaryTitle LIKE '%The Purge%'
    GROUP BY t.tconst
  ) AS recommendedTitles
WHERE numVotes > 50
ORDER BY avgRating DESC