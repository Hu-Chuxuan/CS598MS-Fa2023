SELECT t1.* FROM title_ratings AS r JOIN title_basics AS b ON r.titleID = b.titleID AND b.primaryTitle='Ghostbusters' WHERE r.averageRating > 7