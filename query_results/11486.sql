SELECT * FROM
    title_rating_details WHERE rating >= 8 AND (title_type = "Movie" OR title_type IS NULL)