SELECT title_basics.title, title_basics.primaryTitle, title_ratings.averageRating, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Superhero' AND title_ratings.numVotes > 10000
AND NOT EXISTS (SELECT 1 FROM title_basics WHERE title_basics.tconst = title_principals.tconst AND title_basics.endYear > NOW())
AND title_basics.startYear <= NOW()
AND title_principals.job = 'Actor'
AND title_principals.characters LIKE '%superhero%'
AND NOT title_basics.isAdult
ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC
LIMIT 5