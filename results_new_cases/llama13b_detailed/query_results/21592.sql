SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
       n.nconst, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles,
       c.directors, c.writers, c.ordering, c.category, c.job, c.characters
    FROM title_basics t
    JOIN name_basics n ON t.primaryName = n.primaryName
    JOIN title_crew c ON t.tconst = c.tconst
   WHERE t.primaryTitle = 'Pan's Labyrinth'
     AND t.isAdult = 0
     AND t.startYear = 2006
  ) AS recommended
WHERE NOT EXISTS (
  SELECT 1 FROM title_ratings
  WHERE recommended.tconst = title_ratings.tconst
)
ORDER BY recommended.runtimeMinutes DESC, recommended.startYear DESC