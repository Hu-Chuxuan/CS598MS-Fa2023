SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
       COUNT(r.tconst) AS numVotes, AVG(r.rating) AS averageRating
    FROM title_basics t
    JOIN title_ratings r ON t.tconst = r.tconst
    WHERE t.titleType ='movie' AND t.isAdult = 0
    GROUP BY t.tconst
   ) AS top_movies
  JOIN (
    SELECT n.nconst, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles
       FROM name_basics n
       WHERE n.primaryName IN ('Fred Astaire', 'John Wayne', 'Marlon Brando')
    ) AS famous_actors
    ON top_movies.tconst = famous_actors.knownForTitles
  WHERE famous_actors.nconst IS NOT NULL
  ORDER BY averageRating DESC, numVotes DESC

This SQL query will first retrieve the top movies that are not adult-rated and have at least one rating, then join them with a table of famous actors who have worked with the directors of the top movies. Finally, the query will order the results by average rating and number of votes, and return the results