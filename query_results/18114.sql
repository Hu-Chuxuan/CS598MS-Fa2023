SELECT t.* FROM title AS t JOIN (title_rating AS r ON t.primaryTitle = r.titleId AND r.averageRating >= 7)