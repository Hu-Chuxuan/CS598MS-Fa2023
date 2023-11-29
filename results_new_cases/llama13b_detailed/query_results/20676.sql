SELECT * FROM title_basics
WHERE genres LIKE '%Comedy%'
AND (
  SELECT 
    AVG(averageRating)
  FROM 
    title_ratings
  WHERE 
    tconst IN (SELECT tconst FROM title_principals WHERE category = 'actor')
  AND numVotes > 100
) > (
  SELECT 
    AVG(averageRating)
  FROM 
    title_ratings
  WHERE 
    tconst IN (SELECT tconst FROM title_principals WHERE category = 'actor')
  AND numVotes < 100
)
ORDER BY averageRating DESC