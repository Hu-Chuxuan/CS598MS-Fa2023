SELECT DISTINCT title_rating.* FROM title_ratings AS rating INNER JOIN title_principals as principal ON rating.titleId = principal.id WHERE principal.category LIKE "%dinosaur%" AND ((rating.averageRating >= 7/10) OR (rating.numVotes > 5)) ORDER BY rating.numVotes DESC LIMIT 6