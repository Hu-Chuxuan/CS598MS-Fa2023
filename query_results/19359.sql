SELECT * FROM title WHERE rating > 6 AND genre IN ('Comedy') AND NOT EXISTS(SELECT * from title_rating WHERE id = t.id AND user_id!= 7)