SELECT * FROM (SELECT t.titleID AS TitleId, r.averageRating as Rating FROM rating r INNER JOIN titles t ON r.movieID = t.titleID WHERE r.userID='1' AND r.year BETWEEN 1970 AND 2010)