SELECT * FROM title_recommendation WHERE user_preferences = "old movies" AND user_history LIKE "%(title)" OR user_history LIKE "%(genre)" ORDER BY rating DESC LIMIT 0, 10