SELECT t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.primaryName, t2.birthYear, t2.knownForTitles
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres LIKE '%Comedy%'
AND t2.averageRating > (SELECT AVG(t3.rating) FROM title_ratings t3 WHERE t3.title = 'What About Bob%3F (1991)')
AND t1.startYear BETWEEN 1990 AND 1999
AND EXISTS (
  SELECT 1
  FROM title_crew t3
  JOIN name_basics t4 ON t3.directors = t4.primaryName
  WHERE t3.tconst = t1.tconst AND t4.birthYear = 1950
)
AND NOT EXISTS (
  SELECT 1
  FROM title_principals t5
  JOIN name_basics t6 ON t5.category = t6.primaryName
  WHERE t5.tconst = t1.tconst AND t6.birthYear = 1950
)
AND t1.tconst NOT IN (SELECT t7.tconst FROM title_ratings t7 WHERE t7.title IN ('Halloween  (2007)', 'Ring  (1998)'))
ORDER BY t2.averageRating DESC