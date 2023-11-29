SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
       n.nconst, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles
  FROM title_basics t
  JOIN name_basics n ON t.directors = n.nconst
  WHERE t.primaryTitle = 'The Sixth Sense' OR t.primaryTitle = 'The Village'
) AS recommended
WHERE NOT EXISTS (
  SELECT 1 FROM title_ratings tr
  WHERE recommended.tconst = tr.tconst AND tr.averageRating > 5
)
ORDER BY recommended.startYear DESC, recommended.primaryTitle ASC