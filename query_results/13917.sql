SELECT t1.* FROM title_basic AS t1 INNER JOIN title_rating as t2 ON t1.title_id = t2.title_id WHERE t2.average RATING > 6 AND t2.num votes >= 10