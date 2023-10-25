SELECT t.* FROM imdb_movies AS t WHERE 
    (title_rating >= 7 AND title_type ='movie') OR (director IN ('David Fincher'))