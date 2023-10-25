SELECT * FROM titles WHERE (title_type = "movie" AND
genre IN ('comedy') AND ((startyear BETWEEN? AND?)))