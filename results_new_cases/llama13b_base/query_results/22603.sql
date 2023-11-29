SELECT title_basics.title, title_basics.primaryTitle, title_ratings.averageRating, name_basics.primaryName, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'romance'
AND title_ratings.averageRating > (SELECT AVG(title_ratings.averageRating)
                                   FROM title_ratings
                                   WHERE title_ratings.tconst IN (SELECT tconst
                                                             FROM title_basics
                                                             WHERE title_basics.genres = 'action'
                                                             AND title_basics.startYear <= 1989
                                                             AND title_basics.endYear >= 1989))
AND NOT EXISTS (SELECT 1
                 FROM title_ratings
                 WHERE title_ratings.tconst = title_basics.tconst
                 AND title_ratings.numVotes > (SELECT AVG(title_ratings.numVotes)
                                               FROM title_ratings
                                               WHERE title_ratings.tconst IN (SELECT tconst
                                                                     FROM title_basics
                                                                     WHERE title_basics.genres = 'action'
                                                                     AND title_basics.startYear <= 1989
                                                                     AND title_basics.endYear >= 1989)))
AND title_basics.primaryTitle LIKE '%Say Anything...%'
ORDER BY title_ratings.averageRating DESC