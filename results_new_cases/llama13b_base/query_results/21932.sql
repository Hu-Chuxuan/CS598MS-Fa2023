SELECT title_basics.title, title_ratings.averageRating, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Science Fiction'
AND title_ratings.numVotes > 10000
AND title_crew.directors = 'The Wachowskis'
AND title_principals.characters = 'Keanu Reeves'
ORDER BY title_ratings.averageRating DESC