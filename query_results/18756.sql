SELECT * FROM (
    SELECT title_id AS id, title_type AS type, title_rating AS rr, title_year AS yyy, title_runtime AS run, title_genre AS g, rating_average AS ava, rating_numvotes AS v
FROM (
        SELECT DISTINCT title_id, title_type, title_rating, title_year, title_runtime, title_genre, AVG(rating_avg), COUNT(*) as cnt FROM `titleratings` GROUP BY title_id ) sub
WHERE ((ava >= 7 && ava <= 8)) AND ((ava > 5 || ava < 6))