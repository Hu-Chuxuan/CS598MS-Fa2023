SELECT * FROM title_basics t
JOIN title_crew c ON t.tconst = c.tconst
JOIN title_principals p ON c.tconst = p.tconst
JOIN name_basics n ON p.nconst = n.nconst
WHERE n.primaryProfession = 'actor'
AND t.genres LIKE '%Animation%'
AND t.startYear > 2000
AND t.endYear < 2020
AND t.runtimeMinutes > 90
AND t.isAdult = 0
AND NOT EXISTS (
  SELECT 1 FROM title_ratings
  WHERE t.tconst = r.tconst
)
ORDER BY t.averageRating DESC, t.startYear DESC