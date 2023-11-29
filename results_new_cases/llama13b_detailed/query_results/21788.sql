SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
       n.nconst, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles
    FROM title_basics t
    JOIN name_basics n ON t.primaryTitle = n.primaryName
   WHERE t.titleType ='movie' AND t.genres LIKE '%Musical'
) AS titles
WHERE EXISTS (
  SELECT 1 FROM title_ratings tr
  JOIN title_principals tp ON tr.tconst = tp.tconst
  JOIN name_basics nb ON tp.nconst = nb.nconst
  WHERE nb.primaryName = 'Les Misérables'
    AND tr.averageRating > 5
    AND tr.numVotes > 100
)
ORDER BY numVotes DESC, averageRating DESC