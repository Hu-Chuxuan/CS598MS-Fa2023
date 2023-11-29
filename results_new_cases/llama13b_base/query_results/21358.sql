SELECT t.title, t.startYear, t.runtimeMinutes, t.genres, c.primaryName, c.birthYear, c.deathYear, c.primaryProfession, c.knownForTitles
FROM title_basics t
JOIN name_basics c ON t.directors = c.nconst
WHERE t.titleType = 'Feature Film' AND t.isAdult = 'No' AND t.startYear = 1981 AND t.runtimeMinutes > 90
AND EXISTS (
  SELECT 1
  FROM title_ratings
  WHERE title = t.title AND averageRating > 7
)
AND NOT EXISTS (
  SELECT 1
  FROM title_principals
  WHERE category = 'Actress' AND job = 'Lead' AND characters = 'Mia Sara'
)
LIMIT 5

