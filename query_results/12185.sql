SELECT t.title_name AS "Movie", r.rating AS "Average Rating" FROM rating r JOIN titles t ON t.titleID = r.titleID WHERE r.userID IS NULL AND t.title_genre IN ('Horror','Thriller') ORDER BY ABS(r.averageRating - r.numVotes / r.numVotes)