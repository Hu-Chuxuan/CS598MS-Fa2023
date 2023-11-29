SELECT title_basics.titleType, title_basics.primaryTitle, title_ratings.averageRating, title_principals.category, title_principals.job
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.titleType ='movie' AND title_ratings.averageRating > 6 AND title_principals.category IN ('director', 'writer', 'actor')
AND (title_basics.primaryTitle LIKE '%crime%' OR title_principals.job LIKE '%crime%')
ORDER BY title_ratings.averageRating DESC