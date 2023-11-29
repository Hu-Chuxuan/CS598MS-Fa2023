SELECT * FROM
    (SELECT DISTINCT title_id AS id, title_type AS type, CONCAT('{',title_id,'}') AS id_str, title_rating AS rating
        FROM title_ratings WHERE title_type='movie')