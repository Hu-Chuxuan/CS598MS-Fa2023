SELECT * FROM
( SELECT DISTINCT
    tb.title_id AS id,
    COUNT(*) AS total_rating,
    ROUND((CAST(AVG(tb.averageRating) as float)/COUNT(*))*100,'2') AS avg_rating,
    CONCAT('<img src="https://image.tmdb.org/t/p/original/',TB.posterPath, '" width=76 height=100> <a href="', TB.imdbID,"">", TB.name, "</a>" ) AS imageUrl,
    TB.title_type AS type,
    TB.primary_title AS title,
    TB.original_title AS original_title,
    TB.is_adult AS adult,
    TB.start_year AS year,
    TB.end_year AS end_year,
    TB.runtime_minutes AS runtime_minutes,
    TB.genre_ids AS genre_ids
FROM title_basics AS TB JOIN casts AS C ON TB.cast_id = c.cast_id JOIN crew AS CR ON TB.crew_id = cr.crew_id WHERE TB.title_id IN ('", $userInput, "','") GROUP BY TB.title_id ORDER BY avg_rating DESC LIMIT 5 OFFSET 0"