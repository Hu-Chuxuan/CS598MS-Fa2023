SELECT movies.* FROM movies JOIN user_preferences ON (movies._id = user_preferences.movieId) WHERE (user_preferences.category = "Documentaries") AND (user_preferences.job IN ('director', 'writer')) GROUP BY movies._id