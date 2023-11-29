SELECT * FROM (
SELECT t.title_id, t.title, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres, 
       AVG(r.rating) AS avgRating, COUNT(r.title_id) AS numVotes
FROM title_basics t
JOIN title_ratings r ON t.title_id = r.title_id
WHERE t.titleType ='movie' AND t.isAdult = 0
GROUP BY t.title_id
HAVING AVG(r.rating) > (SELECT AVG(r2.rating) FROM title_ratings r2 WHERE r2.title_id IN (SELECT title_id FROM title_ratings WHERE user_id = <current_user_id>) AND r2.numVotes > 50)
) AS recommendedTitles
WHERE recommendedTitles.title LIKE '%for kids%'
ORDER BY recommendedTitles.avgRating DESC