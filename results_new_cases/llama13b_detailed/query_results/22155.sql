SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
       AVG(r.rating) AS averageRating, COUNT(r.rating) AS numVotes
    FROM title_basics t
    JOIN title_ratings r ON t.tconst = r.tconst
    WHERE t.titleType ='movie' AND t.isAdult = 0
    GROUP BY t.tconst
   ) AS titles
  JOIN (
    SELECT n.nconst, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles
      FROM name_basics n
      WHERE n.primaryName IN (SELECT u.name FROM user_profiles u WHERE u.preferences = 'comedy and action')
      GROUP BY n.nconst
    ) AS actors
  ON actors.nconst = titles.nconst
  JOIN (
    SELECT t.tconst, COUNT(r.rating) AS numVotes
      FROM title_ratings r
      JOIN title_basics t ON r.tconst = t.tconst
      WHERE t.titleType ='movie' AND r.rating IN (SELECT r.rating FROM title_ratings r2 WHERE r2.tconst = r.tconst)
      GROUP BY t.tconst
    ) AS similar_movies
  ON similar_movies.tconst = titles.tconst
  ORDER BY similar_movies.numVotes DESC