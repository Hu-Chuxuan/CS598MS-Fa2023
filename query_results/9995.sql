SELECT DISTINCT t.* FROM title AS t JOIN rating ON r.titleID = t.id WHERE r.userID IS NULL AND t.category IN ('Action') ORDER BY t.averageRating DESC LIMIT 5