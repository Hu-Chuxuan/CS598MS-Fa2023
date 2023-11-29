SELECT title_basics.title, title_basics.primaryTitle, name_basics.primaryName, title_ratings.averageRating
FROM title_basics
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.genres = 'Romance' AND title_basics.startYear < 1980 AND title_basics.endYear > 1970
AND title_ratings.averageRating > (SELECT AVG(title_ratings.averageRating)
                                    FROM title_ratings
                                    WHERE title_ratings.tconst IN (SELECT title_basics.tconst
                                                                    FROM title_basics
                                                                    WHERE title_basics.genres = 'Romance'
                                                                    AND title_basics.startYear < 1980
                                                                    AND title_basics.endYear > 1970))
AND NOT EXISTS (SELECT 1
                  FROM title_ratings
                  WHERE title_ratings.tconst = title_basics.tconst
                  AND title_ratings.numVotes > 100
                  AND title_ratings.averageRating > 7.5)
AND title_basics.isAdult = 0
AND title_basics.runtimeMinutes < 120
AND name_basics.birthYear > 1900
AND name_basics.deathYear < 2000
AND name_basics.primaryProfession = 'Actor'
AND name_basics.knownForTitles = 'The African Queen (1951)'

