SELECT t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.primaryName, t2.birthYear, t2.knownForTitles
FROM title_basics t1
JOIN name_basics t2 ON t1.primaryTitle = t2.primaryName
WHERE t1.genres LIKE '%body%swap%' AND t1.startYear BETWEEN 1970 AND 2020
AND EXISTS (
  SELECT 1
  FROM title_ratings tr
  JOIN name_basics n ON tr.title = n.primaryName
  WHERE n.birthYear = 1980 AND tr.averageRating > 6.5
)
AND NOT EXISTS (
  SELECT 1
  FROM title_principals tp
  JOIN name_basics np ON tp.category = np.primaryName
  WHERE np.birthYear = 1970 AND tp.job = 'Director'
)
ORDER BY t1.startYear DESC, t1.runtimeMinutes ASC