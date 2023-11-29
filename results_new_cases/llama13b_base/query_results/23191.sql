SELECT t1.title, t1.averageRating, t1.numVotes, t2.primaryName, t2.birthYear, t2.knownForTitles
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics n3 ON t2.primaryName = n3.primaryName
WHERE t1.genres LIKE '%comedy%' OR t1.genres LIKE '%horror%'
AND NOT EXISTS (
  SELECT 1 FROM title_principals
  WHERE n3.primaryProfession = 'Actor' AND n3.job = 'Director'
)
AND t1.startYear <= CURRENT_DATE AND t1.endYear >= CURRENT_DATE
GROUP BY t1.title, t1.averageRating, t1.numVotes, t2.primaryName, t2.birthYear, t2.knownForTitles
HAVING COUNT(DISTINCT t2.primaryName) > 1
ORDER BY t1.averageRating DESC, t1.numVotes DESC