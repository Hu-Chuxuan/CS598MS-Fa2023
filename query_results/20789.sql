SELECT * FROM ( SELECT movies.*, cast(cast(director AS text).value as INT) AS director_id )
WHERE rating > 6 AND genre = 'Comedy' OR (genre LIKE '%com%') AND (title_type NOT IN ('tv', 'tv-special'))
ORDER BY rating DESC LIMIT 5