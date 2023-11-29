SELECT t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'Comedy' AND t2.averageRating > 7
AND EXISTS (
    SELECT 1
    FROM name_basics n
    JOIN title_crew c ON n.primaryName = c.directors
    WHERE c.directors = 'Peter Jackson'
)
AND NOT EXISTS (
    SELECT 1
    FROM title_principals p
    JOIN name_basics n ON p.nconst = n.primaryName
    WHERE n.birthYear > 1960
)
LIMIT 5