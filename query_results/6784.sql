SELECT movies.* FROM title_ratings ratings JOIN titles ON rating.movieId = titles.id WHERE rating.averageRating > 8 AND rating.numvotes >= 2