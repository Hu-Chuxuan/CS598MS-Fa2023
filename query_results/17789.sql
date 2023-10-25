SELECT * FROM (
    SELECT t.*, r.avg AS rating
        FROM titles as t LEFT JOIN ratings as r ON t.titleID = r.titleID WHERE t.titleType = "movie" AND t.startYear <= '2000' ORDER BY t.rating DESC LIMIT 10