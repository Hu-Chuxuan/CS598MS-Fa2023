SELECT t1.* FROM titles AS t1 INNER JOIN ( SELECT * from ratings WHERE rating >= 8 AND user_rating = "yes" ) as r ON t1.titleId=r.titleid