SELECT * FROM movie_recommendation WHERE user_preferences = "The Godfather" OR user_preferences LIKE "%Godfather%" AND user_preferences NOT IN ("Chinatown", "Fight Club") ORDER BY avg(rating)