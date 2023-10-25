SELECT t.title_id AS "Movie Title",
       CASE WHEN s.rating >= avg(s.rating) THEN 'Excellent' ELSE '' END as Rated Excellently,
FROM title_ratings t JOIN rating_user u ON t.title_id = u.title_id AND u.userId IN ('7071')
GROUP BY t.movie_id ORDER by t.title_id