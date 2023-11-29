SELECT title_basics.title, title_basics.primaryTitle, title_basics.genres, title_ratings.averageRating, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.primaryTitle = name_basics.primaryName
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Adventure' AND title_ratings.averageRating > 7 AND title_basics.primaryTitle NOT IN (SELECT title_basics.primaryTitle FROM title_basics WHERE user_preferences = true)
AND title_principals.characters LIKE '%animated%'