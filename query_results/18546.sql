SELECT tb.* FROM titleratings r JOIN titles t ON r.titleid = t.imdbID WHERE rating >=? AND rating <=?