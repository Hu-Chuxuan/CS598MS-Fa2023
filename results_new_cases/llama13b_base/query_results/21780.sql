SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_ratings.averageRating, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Drama'
AND title_ratings.numVotes > 1000
AND title_crew.directors = 'Sofia Coppola'
AND title_principals.characters = 'Scott Eastwood'
AND title_basics.startYear = 2003
AND title_basics.endYear = 2018
AND title_basics.runtimeMinutes > 120
AND title_basics.isAdult = 0

ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC