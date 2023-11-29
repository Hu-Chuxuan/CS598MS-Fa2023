SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t2.numVotes, t3.primaryName, t3.birthYear, t3.knownForTitles
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t1.primaryName = t3.primaryName
WHERE t2.averageRating > 7 AND t2.numVotes > 10000 AND t3.knownForTitles LIKE '%Rose Byrne%'
AND NOT EXISTS (
  SELECT 1 FROM title_principals
  WHERE t1.tconst = title_principals.tconst AND title_principals.category = 'Actress'
  AND title_principals.job = 'Lead'
  AND title_principals.characters = 'Rose Byrne'
)
GROUP BY t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t2.numVotes, t3.primaryName, t3.birthYear, t3.knownForTitles
HAVING COUNT(DISTINCT t3.primaryName) > 1
ORDER BY t2.averageRating DESC, t1.startYear DESC