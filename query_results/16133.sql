SELECT t.* FROM titles AS t WHERE t.titleType ='movie' AND EXISTS(SELECT * FROM rating WHERE r.ratingMovieID=t.titleID)