SELECT * FROM (
  SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
       n.nconst, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles,
       COUNT(r.tconst) AS numRatings, AVG(r.averageRating) AS avgRating
    FROM title_basics t
    JOIN name_basics n ON t.primaryTitle = n.primaryName
    JOIN title_ratings r ON t.tconst = r.tconst
    WHERE t.titleType ='movie' AND t.isAdult = 0
    AND n.primaryProfession IN ('actor', 'writer')
    AND r.numVotes > 100
    GROUP BY t.tconst, n.nconst
) AS top_movies
WHERE exists (
  SELECT 1 FROM title_principals p
  WHERE top_movies.tconst = p.tconst AND p.category = 'actor'
)
AND exists (
  SELECT 1 FROM title_principals p
  WHERE top_movies.tconst = p.tconst AND p.category = 'writer'
)
ORDER BY avgRating DESC