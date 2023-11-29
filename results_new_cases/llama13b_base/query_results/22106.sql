SELECT title_basics.title, title_basics.primaryTitle, name_basics.primaryName, title_ratings.averageRating, title_principals.characters
FROM title_basics
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres LIKE '%Science Fiction%' AND title_basics.isAdult = 0 AND title_ratings.numVotes > 1000
AND title_principals.job = 'Actor' AND title_principals.characters LIKE '%comedic%'
AND NOT EXISTS (SELECT 1 FROM user_preferences WHERE user_preferences.title = title_basics.title AND user_preferences.preference = 'Galaxy Quest (1999)')
ORDER BY title_ratings.averageRating DESC