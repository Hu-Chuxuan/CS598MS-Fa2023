SELECT t.* FROM movies AS m INNER JOIN rating AS r ON m.titleID = r.movieID AND r.userID=? WHERE? IN(m.title_genre)