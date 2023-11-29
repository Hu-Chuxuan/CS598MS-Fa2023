SELECT t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.nconst, t3.nconst, t4.nconst
FROM title_basics t1
JOIN title_crew t2 ON t1.tconst = t2.tconst
JOIN title_principals t3 ON t1.tconst = t3.tconst
JOIN name_basics n1 ON t2.directors = n1.nconst
JOIN name_basics n2 ON t3.ordering = n2.nconst
WHERE t1.primaryTitle LIKE '%Juno%'
AND t1.genres LIKE '%Drama%'
AND t2.directors LIKE '%Jason%'
AND t3.category LIKE '%Actor%'
AND t4.job LIKE '%Actor%'
AND t4.characters LIKE '%Pregnant%'
GROUP BY t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.nconst, t3.nconst, t4.nconst
HAVING COUNT(DISTINCT t4.nconst) > 1
ORDER BY t1.startYear DESC