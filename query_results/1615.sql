SELECT t.* FROM title_basic as t INNER JOIN title_rating AS r ON t.titleID = r.movieID WHERE r.averageRating >= $min AND r.numvotes > $count