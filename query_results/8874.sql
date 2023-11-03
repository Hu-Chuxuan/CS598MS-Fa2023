SELECT t.* FROM title_basics AS t JOIN title_ratings AS r ON t.titleId = r.movieId WHERE r.averageRating >.80 AND t.startYear < '2007' OR t.endYear > '2016'