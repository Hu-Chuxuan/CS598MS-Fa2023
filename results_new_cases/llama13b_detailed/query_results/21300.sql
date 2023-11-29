SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres, 
       n.nconst, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles,
       COUNT(DISTINCT r.titleId) AS numRatings
    FROM title_basics t
    JOIN name_basics n ON t.primaryTitle = n.primaryName
    JOIN title_ratings r ON t.tconst = r.titleId
    WHERE t.primaryTitle = 'The Big Sick (2017)'
    AND r.averageRating > 6.5
    AND n.primaryProfession NOT LIKE '%Charlize%'
  ) AS preferredTitles
  JOIN (
    SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
         COUNT(DISTINCT r.titleId) AS numRatings
      FROM title_basics t
      JOIN title_ratings r ON t.tconst = r.titleId
      WHERE t.titleType ='movie'
      AND r.averageRating > 6.5
  ) AS allTitles ON preferredTitles.tconst = allTitles.tconst
  WHERE allTitles.numRatings > 50
  ORDER BY preferredTitles.numRatings DESC