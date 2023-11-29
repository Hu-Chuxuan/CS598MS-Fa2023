SELECT * FROM (
  SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
       AVG(rating) AS avgRating, COUNT(rating) AS numVotes
    FROM title_basics
    JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
    WHERE titleType ='movie' AND isAdult = 0 AND startYear <= 2013 AND endYear >= 2013
    GROUP BY tconst
) AS top_movies
JOIN (
  SELECT nconst, name, birthYear, deathYear, primaryProfession, knownForTitles
    FROM name_basics
    WHERE primaryProfession IN ('actor', 'actress') AND knownForTitles IN ('The Purge (2013)', 'Fight Club (1999)', 'The Dark Knight  (2008)', 'Natural Born Killers (1994)')
) AS preferred_actors ON preferred_actors.nconst = top_movies.nconst
WHERE top_movies.numVotes > 100
ORDER BY avgRating DESC, numVotes DESC