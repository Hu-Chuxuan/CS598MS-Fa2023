SELECT t.* FROM titles AS t JOIN rating AS r ON t.titleID = r.titleID AND r.userID='$uid' WHERE ((r.rating >= $minimumscore OR $minimumscore IS NULL)) ORDER BY r.averageRATING DESC LIMIT 0,$limit