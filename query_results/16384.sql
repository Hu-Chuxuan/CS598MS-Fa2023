SELECT t.* FROM titles AS t JOIN name_basics AS n ON t.title_id = n.primaryMovieID WHERE t.isAdult=0 AND t.startYear<2000 ORDER BY n.birthYear DESC LIMIT 3