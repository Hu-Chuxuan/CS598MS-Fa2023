SELECT movies.* FROM (title_basic INNER JOIN name_basic ON title_basics.primaryName = name_basics.primaryName) INNER JOIN title_rating USING(movieId)