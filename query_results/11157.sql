SELECT DISTINCT t.* FROM movies m JOIN cast c ON c.movie = m.imdbID AND c.category='Principal' WHERE m.title_type IN ('Feature Film','Short Film') ORDER BY rating DESC LIMIT 5