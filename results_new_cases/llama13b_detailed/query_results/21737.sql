SELECT * FROM (
  SELECT tconst, primaryTitle, genres, averageRating, numVotes
  FROM title_basics
  WHERE genres LIKE '%Comedy' AND genres LIKE '%Romance'
  ORDER BY averageRating DESC, numVotes DESC
) AS titles
JOIN (
  SELECT nconst, knownForTitles
  FROM name_basics
  WHERE knownForTitles LIKE '%Guardians of the Galaxy%' OR knownForTitles LIKE '%Thor%' OR knownForTitles LIKE '%The Avengers%' OR knownForTitles LIKE '%The Dark Knight%'
) AS actors
ON titles.tconst NOT IN (SELECT tconst FROM title_principals WHERE category = 'actor')
WHERE actors.nconst NOT IN (SELECT nconst FROM name_basics WHERE primaryProfession = 'actor')
ORDER BY averageRating DESC, numVotes DESC