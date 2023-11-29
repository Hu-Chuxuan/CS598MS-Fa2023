SELECT title_basics.title, title_basics.primaryTitle, name_basics.primaryName, title_ratings.averageRating, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Documentary' AND title_basics.originalTitle LIKE '%Musician%'
AND NOT EXISTS (SELECT 1 FROM title_ratings WHERE title_ratings.tconst = title_basics.tconst AND title_ratings.numVotes > 50)
AND NOT EXISTS (SELECT 1 FROM name_basics WHERE name_basics.primaryName = title_basics.primaryTitle AND name_basics.birthYear > 1980)
AND NOT EXISTS (SELECT 1 FROM title_principals WHERE title_principals.characters = 'Director' AND title_principals.job = 'Actor')
ORDER BY title_ratings.averageRating DESC, title_basics.startYear ASC
LIMIT 5