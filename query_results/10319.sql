SELECT DISTINCT t.* FROM title_basic AS t JOIN user_preferences UP ON t.titleId = UP.movieId WHERE t.titleType IN ('Horror','Thriller') AND UP.userID=<insert your user ID here> ORDER BY t.startYear ASC