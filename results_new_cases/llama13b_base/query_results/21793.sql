SELECT * FROM title_basics tb
JOIN (
  SELECT tconst, AVG(rating) AS avg_rating
  FROM title_ratings
  GROUP BY tconst
) tr ON tb.tconst = tr.tconst
JOIN (
  SELECT nconst, primaryName, birthYear, deathYear, primaryProfession, knownForTitles
  FROM name_basics
  WHERE primaryProfession IN ('Actor', 'Actress')
  GROUP BY nconst
) nb ON tb.nconst = nb.nconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear <= CURRENT_DATE
AND tb.endYear >= CURRENT_DATE
AND NOT EXISTS (
  SELECT 1
  FROM title_ratings
  WHERE tconst = tb.tconst AND numVotes > 1000
)
AND NOT EXISTS (
  SELECT 1
  FROM name_basics
  WHERE nconst = tb.nconst AND primaryProfession = 'Director'
)
ORDER BY avg_rating DESC