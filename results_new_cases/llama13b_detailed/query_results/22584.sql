SELECT t.title_id, t.title_basics.primaryTitle, t.title_basics.genres, COUNT(r.user_id) AS numVotes
FROM title_basics t
JOIN title_ratings r ON t.title_id = r.title_id
JOIN name_basics n ON t.directors = n.nconst OR t.writers = n.nconst
WHERE t.titleType ='movie' AND t.isAdult = 0 AND t.genres LIKE '%Drama%'
GROUP BY t.title_id, t.title_basics.primaryTitle, t.title_basics.genres
HAVING COUNT(r.user_id) > (SELECT AVG(numVotes) FROM title_ratings WHERE title_id IN (SELECT title_id FROM title_basics WHERE primaryTitle LIKE '%Inception%'))
ORDER BY numVotes DESC