SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
         AVG(r.rating) AS avg_rating, COUNT(r.rating) AS num_votes
    FROM title_basics t
    JOIN title_ratings r ON t.tconst = r.tconst
    WHERE t.titleType IN ('comedy', 'action')
    AND t.primaryTitle LIKE '%Click%'
    AND t.startYear = 2010
    GROUP BY t.tconst
  ) AS popular_movies
  JOIN (
    SELECT n.nconst, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles
      FROM name_basics n
      WHERE n.primaryProfession IN ('actor', 'actress')
      AND n.knownForTitles LIKE '%Black Panther%'
  ) AS popular_actors
  ON popular_movies.tconst = popular_actors.nconst
  WHERE popular_actors.primaryName LIKE '%Chadwick Boseman%'
  ORDER BY avg_rating DESC, num_votes DESC
