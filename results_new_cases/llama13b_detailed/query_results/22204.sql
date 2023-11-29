SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
       COUNT(r.nconst) AS numRatings, AVG(r.rating) AS avgRating
  FROM title_basics t
  JOIN title_ratings r ON t.tconst = r.tconst
  WHERE t.titleType IN ('movie','short') AND t.isAdult = 0
  GROUP BY t.tconst
) AS top_movies
WHERE exists (
  SELECT 1 FROM title_crew c
  JOIN name_basics n ON c.directors = n.nconst OR c.writers = n.nconst
  WHERE n.primaryProfession = 'actor' AND n.knownForTitles = 'tt0000001'
) AND (
  'comedies' = ANY (top_movies.genres) OR 'documentaries' = ANY (top_movies.genres)
) AND (
  NOT EXISTS (
    SELECT 1 FROM title_principals p
    WHERE p.ordering = 1 AND p.nconst = ANY (top_movies.crew)
  ) OR (
    SELECT COUNT(*) FROM title_principals p
    WHERE p.ordering = 1 AND p.nconst = ANY (top_movies.crew)
  ) < 2
)
ORDER BY avgRating DESC, numRatings DESC