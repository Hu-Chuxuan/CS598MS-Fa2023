SELECT * FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
JOIN name_basics
ON title_basics.directors = name_basics.nconst
WHERE title_basics.titleType ='movie'
AND title_ratings.averageRating > 6
AND title_basics.startYear = 1990
AND name_basics.primaryProfession LIKE '%actor%'
AND EXISTS (
  SELECT 1
  FROM title_principals
  WHERE title_principals.tconst = title_basics.tconst
  AND title_principals.category = 'actor'
)

ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC