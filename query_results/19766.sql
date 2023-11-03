SELECT movies.* FROM movies JOIN name_basics ON movies.title = name_basics.primaryName WHERE movies.director IN ('Joe Dante') AND movies.writer IN ('Christopher Columbus') GROUP BY movies ORDER by rating DESC LIMIT 0, 6