SELECT * FROM title_recommendation WHERE
(title_rating >=? AND user_prefer_movie LIKE '%' || t.primaryTitle || '%') OR
(user_like_actor LIKE % && actor_role LIKE '%' + t.job + '%')