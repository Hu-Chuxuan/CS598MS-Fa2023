SELECT * FROM (title_ratings INNER JOIN title_crew ON rating = id_director) WHERE (rating >= 6 AND rating <= 8)