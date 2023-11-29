SELECT t.title, t.averageRating, t.numVotes, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, c.category, c.job, c.characters
FROM title_basics t
JOIN name_basics n ON t.primaryTitle = n.title
JOIN title_crew c ON t.directors = c.director
WHERE t.titleType = 'Movie' AND t.genres LIKE '%Horror%' AND t.originalTitle LIKE '%Stephen King%'
AND NOT EXISTS (
  SELECT 1
  FROM title_ratings tr
  WHERE tr.title = t.title AND tr.userRating > (SELECT AVG(rating) FROM title_ratings WHERE title = t.title)
)
AND NOT EXISTS (
  SELECT 1
  FROM title_principals tp
  WHERE tp.title = t.title AND tp.category = 'Actress' AND tp.job = 'Lead'
)
ORDER BY t.averageRating DESC, n.primaryName ASC