SELECT t.title, t.startYear, t.runtimeMinutes, t.genres, c.primaryName, c.birthYear, c.deathYear, c.primaryProfession, c.knownForTitles
FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics c ON t.directors = c.nconst OR t.writers = c.nconst
WHERE t.genres LIKE '%comedy%' AND t.startYear = 1992
AND tr.averageRating > 7
AND NOT EXISTS (
  SELECT 1
  FROM title_principals
  WHERE t.tconst = title_principals.tconst AND category = 'actor' AND job = 'voice'
)
LIMIT 5