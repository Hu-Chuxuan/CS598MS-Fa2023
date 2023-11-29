SELECT t.title_id, t.primary_title, t.genres, t.runtime_minutes, t.average_rating, COUNT(r.title_id) as num_ratings
FROM title_basics t
JOIN title_ratings r ON t.title_id = r.title_id
WHERE t.primary_title LIKE '%drama%' AND t.genres LIKE '%drama%'
GROUP BY t.title_id, t.primary_title, t.genres, t.runtime_minutes
HAVING COUNT(r.title_id) > (SELECT AVG(num_ratings) FROM title_ratings WHERE user_id =?)
ORDER BY num_ratings DESC