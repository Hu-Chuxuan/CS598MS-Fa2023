SELECT movies.* FROM movies WHERE (title_type = "movie" AND title_year BETWEEN @startYear AND @endYear)