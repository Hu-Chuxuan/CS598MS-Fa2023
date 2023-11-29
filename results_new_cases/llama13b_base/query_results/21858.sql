SELECT * FROM (
SELECT t.title_id, t.title_basics.primaryTitle, t.title_basics.startYear, t.title_basics.genres, 
       AVG(r.rating) AS avg_rating, COUNT(r.title_id) AS num_votes
FROM title_basics t
JOIN title_ratings r ON t.title_id = r.title_id
WHERE t.primaryTitle LIKE '%Dumb and Dumber%' OR t.primaryTitle LIKE '%Superbad%'
GROUP BY t.title_id
) AS top_movies
WHERE avg_rating > (SELECT AVG(r.rating) FROM title_ratings WHERE title_id IN (SELECT title_id FROM title_basics WHERE primaryTitle = 'Iron Man'))
AND num_votes > (SELECT COUNT(title_id) FROM title_ratings WHERE title_id IN (SELECT title_id FROM title_basics WHERE primaryTitle = 'Iron Man'))
ORDER BY avg_rating DESC