SELECT * FROM (
    SELECT t.*, n.name AS "Director", d.name AS "Writer"
        WHERE t.titleType = "Movie" AND t.primaryTitle IN ('Silver Linings Playbook')
            UNION ALL
                SELECT t.*, r.rating AS rating, COUNT(r.id) AS votes
                   FROM imdb.title_ratings t INNER JOIN imdb.name_raters r ON r.titleId=t.id GROUP BY t.id ORDER BY rating DESC LIMIT 1