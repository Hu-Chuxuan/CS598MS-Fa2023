SELECT title_basics.title, title_basics.primaryTitle, title_basics.genres, name_basics.primaryName, title_crew.directors, title_principals.characters
FROM title_basics
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Horror' AND title_basics.startYear = 1996
AND title_ratings.averageRating > (
    SELECT AVG(title_ratings.averageRating)
    FROM title_ratings
    WHERE title_ratings.tconst IN (SELECT title_basics.tconst FROM title_basics WHERE title_basics.genres = 'Horror' AND title_basics.startYear = 1996)
    AND title_ratings.numVotes > 1000
)
AND NOT EXISTS (
    SELECT 1
    FROM title_ratings
    WHERE title_ratings.tconst = title_basics.tconst AND title_ratings.numVotes > 1000
    AND title_ratings.averageRating > title_basics.averageRating
)
AND title_principals.characters LIKE '%Scream%'
OR title_principals.characters LIKE '%Scary Movie%'