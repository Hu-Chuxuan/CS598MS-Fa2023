SELECT DISTINCT t.* FROM title_basic AS t JOIN title_rating AS r ON (r.title = t.title AND r.average RATING > 6)