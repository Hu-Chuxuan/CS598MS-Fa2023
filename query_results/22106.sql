SELECT * FROM (title_principals JOIN title_crew) WHERE title_crew.director = "Hans Zimmer" AND category IN ("Musical", "Comedy") GROUP BY director ORDER BY rating DESC LIMIT 10