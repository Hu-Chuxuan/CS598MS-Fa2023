SELECT t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.primaryName, t2.birthYear, t2.knownForTitles
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'Comedy' AND t1.startYear = 1998
AND EXISTS (
  SELECT 1
  FROM name_basics n
  JOIN title_crew c ON n.nconst = c.nconst
  WHERE c.directors = 'Ben Stiller'
)
AND EXISTS (
  SELECT 1
  FROM name_basics n
  JOIN title_principals p ON n.nconst = p.nconst
  WHERE p.category = 'Actress' AND p.job = 'Lead'
  AND n.birthYear = 1970 AND n.knownForTitles = 'There''s Something About Mary'
)
AND NOT EXISTS (
  SELECT 1
  FROM title_ratings tr
  WHERE tr.tconst = t1.tconst AND tr.averageRating < 7
)
ORDER BY t1.startYear, t1.runtimeMinutes