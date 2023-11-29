SELECT t1.ttconst, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.nconst, t2.job, t2.characters
FROM title_basics t1
JOIN title_crew t2 ON t1.ttconst = t2.tconst
WHERE t1.primaryTitle = 'The Notebook' AND t2.directors = 'nm0085156'
AND (
    SELECT AVG(rating)
    FROM title_ratings
    WHERE tconst = t1.ttconst
) > (
    SELECT AVG(rating)
    FROM title_ratings
    WHERE tconst = t2.tconst
)
ORDER BY AVG(rating) DESC