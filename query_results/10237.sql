SELECT DISTINCT r.titleID as MovieID FROM ratings AS r JOIN titles t ON t.titleID = r.movieID WHERE userLike LIKE '%family%' AND userDislike NOT LIKE '%adult%'