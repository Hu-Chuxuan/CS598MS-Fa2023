SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
       AVG(r.rating) AS avgRating, COUNT(r.rating) AS numVotes
       FROM title_basics t
       JOIN title_ratings r ON t.tconst = r.tconst
       WHERE t.titleType ='movie' AND t.isAdult = 0 AND t.startYear BETWEEN 1990 AND 2007
       GROUP BY t.tconst
    ) AS top_movies
    JOIN (
      SELECT n.nconst, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles
           FROM name_basics n
           WHERE n.primaryProfession IN ('actor', 'actress')
           AND n.knownForTitles NOT IN ('John Wick: Chapter 2')
           GROUP BY n.nconst
     ) AS actors ON top_movies.tconst = actors.knownForTitles
    JOIN (
      SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres
           FROM title_basics t
           WHERE t.titleType ='movie' AND t.isAdult = 0 AND t.startYear BETWEEN 1990 AND 2007
           GROUP BY t.tconst
     ) AS movies ON top_movies.tconst = movies.tconst
    WHERE actors.primaryName IN ('Jim Carrey', 'Kate McKinnon')
    ORDER BY avgRating DESC, numVotes DESC