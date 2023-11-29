SELECT * FROM title_basics tb
JOIN (
  SELECT tconst, AVG(numVotes) AS avg_rating
  FROM title_ratings
  GROUP BY tconst
) tr ON tb.tconst = tr.tconst
JOIN (
  SELECT nconst, primaryName, birthYear, deathYear, primaryProfession, knownForTitles
  FROM name_basics
  WHERE primaryProfession IN ('Actor', 'Actress')
  GROUP BY nconst
) nb ON tb.directors = nb.nconst OR tb.writers = nb.nconst
WHERE tb.genres LIKE '%Horror%' AND tb.startYear <= 2001 AND tb.endYear >= 2001 AND tb.runtimeMinutes > 90
AND NOT EXISTS (
  SELECT 1 FROM title_basics
  WHERE tb.tconst = tr.tconst AND tr.avg_rating > 7
)
AND NOT EXISTS (
  SELECT 1 FROM name_basics
  WHERE nb.nconst = tb.directors OR nb.nconst = tb.writers AND nb.primaryProfession = 'Actor'
  AND NOT EXISTS (
    SELECT 1 FROM title_basics
    WHERE tb.tconst = nb.nconst AND tr.avg_rating > 7
  )
)
ORDER BY avg_rating DESC