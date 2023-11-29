SELECT title_basics.title, title_ratings.averageRating, name_basics.primaryName, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Horror'
AND title_ratings.averageRating > 7
AND name_basics.primaryProfession = 'Director'
AND title_crew.directors IN ('Steven Spielberg', 'J.J. Abrams')
AND title_principals.characters LIKE '%ghost%'
ORDER BY title_ratings.averageRating DESC