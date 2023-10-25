SELECT t.* FROM title_recommendation AS t WHERE
t.user_id =? AND NOT EXISTS( SELECT * FROM title_recommended WHERE title_id=title_id)