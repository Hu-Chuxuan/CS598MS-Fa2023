SELECT t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres LIKE '%old%' AND t2.averageRating > (
    SELECT AVG(t3.averageRating)
    FROM title_ratings t3
    WHERE t3.tconst IN (SELECT t4.tconst FROM title_basics t4 WHERE t4.primaryTitle = 'Vertigo' OR t4.primaryTitle = 'To Catch a Thief')
)
AND t1.startYear BETWEEN 1950 AND 1969
AND NOT EXISTS (
    SELECT 1
    FROM title_principals t3
    WHERE t3.tconst = t1.tconst AND t3.category = 'actor' AND t3.job = 'director'
)
ORDER BY t2.averageRating DESC, t1.startYear DESC