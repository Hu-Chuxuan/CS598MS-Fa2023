SELECT DISTINCT r.primaryName AS actor FROM actors a INNER JOIN titles t ON a.job = "character" AND t.title_type IN ("movie") WHERE a.name LIKE '%John%' OR a.name LIKE '%Matthew%'