SELECT * FROM movies WHERE
((title_type = "Comedy" OR title_genre IN ("Horror", "Drama") ) AND (start_year > 1970)) AND ((end_year < 2000) OR (primary_profession LIKE '%Actor%'))