SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_ratings.averageRating, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Horror'
AND title_ratings.numVotes > 1000
AND title_crew.directors = 'Peter Bogdanovich'
AND title_principals.characters = 'Child'
AND title_basics.startYear = 1984
ORDER BY title_ratings.averageRating DESC