SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres, 
       COUNT(DISTINCT r.nconst) AS numVotes, AVG(r.rating) AS averageRating
    FROM title_basics t
    LEFT JOIN title_ratings r ON t.tconst = r.tconst
    WHERE t.titleType ='movie' AND t.originalTitle LIKE '%The Purge%'
    GROUP BY t.tconst
  ) AS recommended
WHERE recommended.averageRating > 5 AND recommended.numVotes > 100
ORDER BY recommended.averageRating DESC