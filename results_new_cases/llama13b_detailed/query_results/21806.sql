SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres, 
       AVG(r.rating) AS avgRating, COUNT(r.rating) AS numVotes
    FROM title_basics t
    JOIN title_ratings r ON t.tconst = r.tconst
    WHERE t.titleType ='movie' AND t.isAdult = 0
    AND r.numVotes > 100
    GROUP BY t.tconst
  ) AS top_movies
WHERE exists (
  SELECT 1 FROM name_basics n
  JOIN title_principals tp ON n.nconst = tp.nconst
  WHERE n.primaryProfession = 'actor' AND tp.ordering = 1
  AND n.knownForTitles @> 'tt0053137,tt00319'
)
AND top_movies.avgRating > 6.5
AND top_movies.numVotes > 100
AND top_movies.tconst NOT IN (SELECT tconst FROM title_ratings WHERE numVotes < 100)
ORDER BY top_movies.avgRating DESC, top_movies.numVotes DESC
LIMIT 10