SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, name_basics.primaryName, title_crew.directors, title_principals.characters
FROM title_basics
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Family'
AND title_basics.startYear BETWEEN 1990 AND 2010
AND title_basics.endYear BETWEEN 1990 AND 2010
AND title_ratings.averageRating > 6
AND title_principals.category = 'Actors'
AND title_principals.job = 'Voice'
AND title_principals.characters LIKE '%animated%'

WHERE title_basics.tconst NOT IN (SELECT title_basics.tconst
                                  FROM title_basics
                                  JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
                                  WHERE title_ratings.numVotes > 1000)

GROUP BY title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, name_basics.primaryName, title_crew.directors, title_principals.characters
HAVING COUNT(DISTINCT title_basics.tconst) > 3
ORDER BY COUNT(DISTINCT title_basics.tconst) DESC