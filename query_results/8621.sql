SELECT t.* FROM titles AS t WHERE NOT EXISTS( SELECT * from user_inputs where title = t.title AND user_preferences like '%' || title || '%') OR EXISTS( SELECT * from user_inputs where title LIKE concat('%', t.title,'%')) LIMIT 3