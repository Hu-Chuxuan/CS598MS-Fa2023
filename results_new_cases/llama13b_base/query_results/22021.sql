SELECT 
title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, 
title_ratings.averageRating, title_ratings.numVotes, 
name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, 
title_crew.directors, title_crew.writers, 
title_principals.ordering, title_principals.category, title_principals.job, 
title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Action' AND title_basics.primaryTitle NOT IN (SELECT title FROM title_basics WHERE primaryTitle = 'The Dark Knight')
AND title_ratings.numVotes > 10000
AND name_basics.primaryName NOT IN (SELECT primaryName FROM name_basics WHERE birthYear = 1970)
AND title_crew.directors NOT IN (SELECT directors FROM title_crew WHERE directors = 'Christopher Nolan')
AND title_principals.category NOT IN (SELECT category FROM title_principals WHERE category = 'Superhero')
ORDER BY title_ratings.averageRating DESC, title_principals.ordering ASC