SELECT * FROM movie_recommendation WHERE
   ((genres = 'comedy') OR (genres LIKE '%comedy%' ESCAPE '')) AND
   ((rating > 5.5) AND (numvotes >= 1000))