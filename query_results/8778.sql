SELECT DISTINCT tc.* FROM imdb_movie AS tm INNER JOIN imdb_title_basic as tb ON(tm.imdbID = tb.id)