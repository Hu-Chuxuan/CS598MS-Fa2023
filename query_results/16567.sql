SELECT DISTINCT * FROM ratings JOIN titles ON rating.title_id = titles.imdbID WHERE rating.averageRating >= 7 AND title.genre IN ('Drama', 'Crime') ORDER BY rating.numvotes DESC LIMIT 6