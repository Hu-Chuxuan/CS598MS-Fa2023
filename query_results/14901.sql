SELECT DISTINCT t.* FROM title AS t INNER JOIN title_rating as tr ON t.titleId = tr.movieId AND tr.userID=100