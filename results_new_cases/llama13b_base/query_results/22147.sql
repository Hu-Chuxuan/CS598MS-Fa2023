SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.genres, title_ratings.averageRating, title_ratings.numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.primaryName = name_basics.primaryName
JOIN title_crew ON title_basics.directors = title_crew.directors
JOIN title_principals ON title_basics.ordering = title_principals.ordering
WHERE title_basics.title LIKE '%summer%' AND title_basics.genres LIKE '%comedy%' AND title_ratings.averageRating > 6 AND title_ratings.numVotes > 1000
AND NOT EXISTS (
    SELECT 1
    FROM title_basics
    WHERE title_basics.primaryTitle = title_basics.title AND title_basics.startYear = 1979
)
AND title_principals.category = 'actress'
AND title_principals.job = 'lead'
AND title_principals.characters LIKE '%female%'