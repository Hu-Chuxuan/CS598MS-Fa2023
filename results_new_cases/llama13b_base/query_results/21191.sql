SELECT title_basics.title, title_ratings.averageRating, name_basics.primaryName
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.primaryTitle = name_basics.primaryName
WHERE title_basics.genres = 'Action'
AND title_ratings.averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE title_basics.tconst = title_ratings.tconst)
AND NOT EXISTS (SELECT 1 FROM title_principals WHERE title_basics.tconst = title_principals.tconst AND category = 'John Wick')
ORDER BY title_ratings.averageRating DESC