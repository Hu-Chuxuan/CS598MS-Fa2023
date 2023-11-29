SELECT * FROM (
  SELECT tconst, primaryTitle, genres, averageRating, numVotes
  FROM title_basics
  WHERE primaryTitle LIKE '%Will Ferrell%'
  UNION ALL
  SELECT nconst, name, birthYear, deathYear, primaryProfession, knownForTitles
  FROM name_basics
  WHERE name LIKE '%Will Ferrell%'
) AS titles
JOIN (
  SELECT nconst, category, job, characters
  FROM title_principals
  WHERE category LIKE 'actor'
) AS actors ON titles.nconst = actors.nconst
JOIN (
  SELECT tconst, directors, writers
  FROM title_crew
) AS crew ON titles.tconst = crew.tconst
WHERE actors.job LIKE 'actor'
ORDER BY averageRating DESC, numVotes DESC