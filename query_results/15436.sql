SELECT * FROM title_recommendation WHERE rating >=? AND user LIKE %?% OR user LIKE '%' || moviename || '%'