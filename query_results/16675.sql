SELECT * FROM (title_principals tp JOIN title_crew tc ON tp.job = tc.director OR tp.job = tc.writer WHERE tp.category LIKE '%actor%' AND tp.ordering >= 7668) AS t
WHERE t.primaryName IN ('Leonardo DiCaprio','Tom Hardy')
AND t.job NOT LIKE 'director'
GROUP BY t.primaryName HAVING COUNT(*) > 2