SELECT t.title, t.startYear, t.runtimeMinutes, t.genres, 
       COUNT(DISTINCT n.primaryName) AS numActors, 
       AVG(r.averageRating) AS avgRating
FROM title_basics t
JOIN title_ratings r ON t.tconst = r.tconst
JOIN name_basics n ON t.primaryTitle = n.primaryTitle
WHERE t.genres LIKE '%romance%' AND t.startYear >= 2000 AND t.endYear <= 2020
GROUP BY t.title
HAVING COUNT(DISTINCT n.primaryName) > 5 AND AVG(r.averageRating) > 7
ORDER BY AVG(r.averageRating) DESC