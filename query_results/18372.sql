SELECT movies.* FROM movies WHERE (movies.title_type = 'feature film') AND ((movies.genre IN ('Crime', 'Drama')) OR (movies.genre IN ('Fantasy','Horror','Sci-Fi')))