SELECT * FROM table WHERE (title_type = "movie" AND user_preferences LIKE "%super%") OR (user_preferences IS NULL)