SELECT * FROM
    ( SELECT DISTINCT title_id as t_id, genre AS g_name
       , AVG(rating), COUNT(*) AS cnt
     FROM rating GROUP BY genre ) r INNER JOIN
    ( SELECT DISTINCT film_title_id as f_tid, primary_name, birth_year, death_year, profession, character_category, order_position, cast_member_role
       from name_principal GROUP by film_title_id, professional, role, position, character_category ORDER BY order_position ASC LIMIT 10 OFFSET 0 ) p ON r.g_name = p.professional AND r.g_name IN ('Comedy') AND r.avg >=.6 WHERE r.cnt > 2