SELECT t.* FROM title AS t WHERE t.isAdult = true AND (
    ((t.startYear BETWEEN? AND?)) OR 
	((t.endYear >=?))) AND (
     SELECT COUNT(*) FROM (
        SELECT r.* FROM rating AS r INNER JOIN user_rating AS u ON r.id = u.ratingID WHERE u.userID IN (?)) AS s GROUP BY s.r.titleID HAVING COUNT(*) > 0)