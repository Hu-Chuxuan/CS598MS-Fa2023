SELECT title_basics.title, title_basics.primaryTitle, name_basics.primaryName, title_ratings.averageRating, title_ratings.numVotes, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Comedy' AND title_basics.startYear >= 1980 AND title_basics.endYear <= 2010
AND (title_ratings.averageRating > 6 AND title_ratings.numVotes > 1000)
AND name_basics.primaryProfession = 'Actor'
AND title_crew.directors = 'Arnold Schwarzenegger'
AND title_principals.characters = 'Stoner'
GROUP BY title_basics.title, title_basics.primaryTitle, name_basics.primaryName
HAVING COUNT(DISTINCT title_principals.characters) > 1
ORDER BY title_ratings.averageRating DESC