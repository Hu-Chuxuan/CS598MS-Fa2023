SELECT t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics n1 ON t1.primaryName = n1.primaryName
WHERE t1.genres LIKE '%Science Fiction%' AND t1.titleType = 'Feature Film' AND t2.averageRating > 7 AND t2.numVotes > 10000
AND NOT EXISTS (
  SELECT 1
  FROM title_principals t3
  JOIN name_basics n2 ON t3.nconst = n2.nconst
  WHERE t3.category = 'Actor' AND n2.primaryProfession = 'Director' AND n2.knownForTitles = 'The 40-Year-Old Virgin (2005)'
)
AND NOT EXISTS (
  SELECT 1
  FROM title_principals t4
  JOIN name_basics n3 ON t4.nconst = n3.nconst
  WHERE t4.category = 'Actor' AND n3.primaryProfession = 'Actor' AND n3.knownForTitles = 'Knocked Up (2007)'
)
ORDER BY t2.averageRating DESC, t1.startYear ASC