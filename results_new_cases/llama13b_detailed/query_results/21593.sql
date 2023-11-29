SELECT * FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType ='movie'
AND title_basics.genres LIKE '%Action' OR title_basics.genres LIKE '%Spy'
AND title_crew.directors = 'nm1588970' -- Ben Affleck
AND title_principals.category = 'actor'
AND title_ratings.averageRating > 7
ORDER BY title_ratings.averageRating DESC