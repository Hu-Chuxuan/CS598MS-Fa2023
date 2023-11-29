SELECT * FROM (
  SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
  AVG(rating) AS avgRating, COUNT(rating) AS numVotes
  FROM title_ratings
  WHERE titleType ='movie' AND isAdult = 0 AND startYear = 1996 AND endYear = 1999
  GROUP BY tconst
) AS titles
JOIN (
  SELECT nconst, name, birthYear, deathYear, primaryProfession, knownForTitles
  FROM name_basics
  WHERE primaryProfession IN ('actor', 'writer')
  AND knownForTitles IN ('Fargo', 'Being John Malkovich')
) AS actors
ON titles.tconst = actors.knownForTitles
WHERE actors.name = 'John Cusack'
ORDER BY avgRating DESC, numVotes DESC