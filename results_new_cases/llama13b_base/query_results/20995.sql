SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON t.primaryTitle = n.primaryName
WHERE t.genres = 'Family' AND t.startYear > 2010 AND t.endYear < 2020
AND tr.averageRating > 6 AND n.birthYear > 1970 AND n.deathYear < 2010
AND NOT EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.tconst = t.tconst AND tp.category = 'Adult'
)
ORDER BY tr.averageRating DESC, n.primaryName ASC

