SELECT title_basics.title, title_basics.primaryTitle, title_basics.startYear, title_basics.runtimeMinutes, name_basics.primaryName, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.startYear = 2012 AND title_basics.genres LIKE '%Action%' OR title_basics.genres LIKE '%Spy%'
AND title_ratings.averageRating > (
    SELECT AVG(title_ratings.averageRating)
    FROM title_ratings
    WHERE title_ratings.tconst IN (SELECT title_basics.tconst FROM title_basics WHERE title_basics.primaryTitle = 'Argo')
    AND title_ratings.numVotes > 1000
)
AND name_basics.primaryName NOT IN (SELECT name_basics.primaryName FROM name_basics WHERE name_basics.birthYear < 1980)
AND title_principals.characters NOT LIKE '%animated%'
GROUP BY title_basics.tconst
HAVING COUNT(DISTINCT title_principals.job) > 2
ORDER BY title_basics.startYear, title_basics.primaryTitle