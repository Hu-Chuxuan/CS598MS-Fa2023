SELECT t1.title_id, t1.title, t1.primaryTitle, t1.originalTitle, t1.genres, t2.averageRating, t2.numVotes, t3.name, t3.primaryProfession, t4.directors, t4.writers, t5.category, t5.job, t5.characters
FROM title_basics t1
JOIN title_ratings t2 ON t1.title_id = t2.title_id
JOIN name_basics t3 ON t1.title_id = t3.title_id
JOIN title_crew t4 ON t1.title_id = t4.title_id
JOIN title_principals t5 ON t1.title_id = t5.title_id
WHERE t1.genres = 'crime' AND t2.averageRating > (SELECT AVG(t6.rating) FROM title_ratings t6 WHERE t6.title_id = t1.title_id AND t6.numVotes > 1000)
AND t1.title NOT IN (SELECT t7.title_id FROM title_ratings t7 WHERE t7.user_id = <user_id>) -- avoid recommending movies rated by the current user
AND t5.category = 'actor' OR t5.category = 'actress'
AND t5.job = 'director' OR t5.job = 'writer'
AND t5.characters = 'Thor'
ORDER BY t2.averageRating DESC, t1.title ASC