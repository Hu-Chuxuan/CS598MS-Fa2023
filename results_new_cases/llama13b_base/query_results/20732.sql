SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres LIKE '%Comedy' AND t1.genres LIKE '%Action'
AND t2.averageRating > (
    SELECT AVG(t3.averageRating)
    FROM title_ratings t3
    WHERE t3.tconst IN (SELECT t4.tconst
                         FROM title_basics t4
                         WHERE t4.primaryGenre LIKE '%Comedy' AND t4.primaryGenre LIKE '%Action')
)
AND t1.startYear BETWEEN 2000 AND 2020
AND t1.runtimeMinutes BETWEEN 80 AND 120

ORDER BY t2.averageRating DESC, t1.startYear DESC