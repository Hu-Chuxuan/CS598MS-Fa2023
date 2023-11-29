SELECT * FROM (
  SELECT tconst, averageRating, numVotes, genres, directors, writers, 
  ROW_NUMBER() OVER (ORDER BY averageRating DESC, numVotes DESC) AS ranking
  FROM title_ratings
  WHERE tconst IN (SELECT tconst FROM title_basics WHERE genres LIKE '%Action%' AND startYear = 2013)
  UNION ALL
  SELECT nconst, primaryName, birthYear, deathYear, primaryProfession, knownForTitles, 
  ROW_NUMBER() OVER (ORDER BY numVotes DESC) AS ranking
  FROM name_basics
  WHERE nconst IN (SELECT nconst FROM title_crew WHERE job LIKE '%Actor%' AND title_basics.tconst IN (SELECT tconst FROM title_basics WHERE genres LIKE '%Action%' AND startYear = 2013))
) AS recommended
WHERE ranking <= 5