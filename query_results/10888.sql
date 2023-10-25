SELECT * FROM title_recommendation WHERE
((title_type ='movie') AND ((user_preferences LIKE '%' || movie_name || '%')) OR
(title_type = 'actor') AND ((user_preferences LIKE '%' || actor_name || '%'))