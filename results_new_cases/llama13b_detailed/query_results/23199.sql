SELECT * FROM (
  SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
    AVG(rating) AS averageRating, COUNT(rating) AS numVotes
    FROM title_ratings
    JOIN title_basics ON title_ratings.tconst = title_basics.tconst
    WHERE titleType ='movie' AND isAdult = 0 AND startYear <= 2013 AND endYear >= 2013
    GROUP BY tconst
) AS top_movies
JOIN (
  SELECT nconst, primaryName, birthYear, deathYear, primaryProfession, knownForTitles
  FROM name_basics
  WHERE primaryName LIKE '%The%' AND birthYear <= 2013 AND deathYear >= 2013
) AS popular_actors
ON top_movies.tconst = popular_actors.knownForTitles
WHERE popular_actors.nconst NOT IN (SELECT nconst FROM name_basics WHERE primaryName = 'The Purge')
ORDER BY averageRating DESC, numVotes DESC