SELECT title_basics.title, title_basics.primaryTitle, title_ratings.averageRating, title_principals.characters
FROM title_basics
INNER JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
INNER JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres NOT IN ('war')
AND title_ratings.averageRating > 7
AND title_principals.job = 'comedy'
AND title_principals.characters NOT NULL

GROUP BY title_basics.title, title_basics.primaryTitle

HAVING COUNT(DISTINCT title_principals.job) > 1