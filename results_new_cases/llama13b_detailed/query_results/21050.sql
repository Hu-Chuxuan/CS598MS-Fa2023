SELECT * FROM (
  SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
  AVG(rating) AS avgRating, COUNT(*) AS numVotes
  FROM title_basics
  WHERE isAdult = 0 AND startYear = 2010 AND genres LIKE '%Comedy%'
  GROUP BY tconst
) AS titles
JOIN (
  SELECT nconst, name, birthYear, deathYear, primaryProfession, knownForTitles
  FROM name_basics
  WHERE primaryProfession LIKE '%Actor%' AND knownForTitles LIKE '%Hangover%'
  GROUP BY nconst
) AS actors
ON titles.tconst NOT IN (SELECT tconst FROM title_principals WHERE category = 'actor')
WHERE actors.name NOT IN (SELECT name FROM name_basics WHERE primaryProfession LIKE '%Director%')
ORDER BY avgRating DESC, numVotes DESC