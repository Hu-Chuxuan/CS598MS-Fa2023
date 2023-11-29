SELECT * FROM (
  SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
    AVG(rating) AS avg_rating, COUNT(rating) AS num_votes
    FROM title_ratings 
    WHERE titleType = 'feature film' AND isAdult = 0 
    GROUP BY tconst
  ) AS popular_movies 
  JOIN (
    SELECT nconst, primaryName, birthYear, deathYear, primaryProfession, knownForTitles
    FROM name_basics
    WHERE primaryProfession IN ('actor', 'actress')
    GROUP BY nconst
  ) AS popular_actors 
  ON popular_movies.tconst = popular_actors.nconst
  WHERE popular_movies.avg_rating > 7 AND popular_movies.num_votes > 1000
  AND popular_actors.knownForTitles LIKE '%Hangover%'
  AND popular_actors.primaryName NOT IN (SELECT nconst FROM name_basics WHERE deathYear > 2020)
  ORDER BY popular_movies.avg_rating DESC, popular_actors.primaryName ASC
LIMIT 5