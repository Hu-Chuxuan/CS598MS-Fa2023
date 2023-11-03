SELECT DISTINCT title.titleType AS type, count(distinct rating.averageRating).ratingCount FROM ratings join titles ON rating.movieId = titles.imdbID AND userPreferences LIKE '%' + title.originalTitle + '%'