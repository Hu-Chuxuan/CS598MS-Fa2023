SELECT t.* FROM titles AS t WHERE
    (t.title_type = "movie" OR t.title_type IS NULL) AND
(t.startyear <=? AND t.endyear >=? ) AND
(t.primaryname LIKE '%' ||? || '%') AND
(t.genre IN ('Drama','History'))AND
(t.numvotes > 1)