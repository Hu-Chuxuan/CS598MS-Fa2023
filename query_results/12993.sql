SELECT t.* FROM title_basics AS t INNER JOIN name_basics ON t.titleId = n.primaryMovieId WHERE genre IN ('Action', 'Adventure') AND rating >= 7