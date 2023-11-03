SELECT t.title_id as MovieID, t.primaryTitle AS Title, c.category AS Genre FROM title_basic t JOIN name_basic n ON n.title_id = t.title_id WHERE t.genres LIKE '%Action%' AND NOT EXISTS( SELECT * FROM user_preferences WHERE user_id =? AND genre IN ('Drama','Comedy') ) GROUP BY MovieId