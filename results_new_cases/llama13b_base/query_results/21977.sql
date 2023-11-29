SELECT t1.title_basics.title, t1.title_basics.primaryTitle, t1.title_basics.originalTitle, t1.title_basics.isAdult, t1.title_basics.startYear, t1.title_basics.endYear, t1.title_basics.runtimeMinutes, t1.title_basics.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.title_basics.tconst = t2.tconst
WHERE t1.genres = 'Comedy' AND t2.averageRating > 7 AND t2.numVotes > 1000
AND EXISTS (
    SELECT 1
    FROM name_basics n
    JOIN title_crew c ON n.nconst = c.nconst
    WHERE c.directors = 'Roger Corman'
)
AND NOT EXISTS (
    SELECT 1
    FROM name_basics n
    JOIN title_principals p ON n.nconst = p.nconst
    WHERE p.category = 'Actor' AND n.birthYear = 1954
)
ORDER BY t2.averageRating DESC, t1.startYear DESC