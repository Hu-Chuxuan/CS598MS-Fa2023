SELECT DISTINCT title_principals.* FROM title_principals JOIN title_rating ON title_principals.movieId = title_rating.movieId WHERE title_principals.category LIKE "comedy" AND title_ratting.average RATING > 6