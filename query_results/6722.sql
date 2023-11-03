SELECT t.* FROM movies AS m JOIN title_ratings AS r ON m.title = r.primaryTitle AND r.averageRating > 7 WHERE userPref LIKE '%romance%' OR userPref LIKE '%comedy%' ORDER BY numVotes DESC LIMIT 3