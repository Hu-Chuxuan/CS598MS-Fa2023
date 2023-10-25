SELECT * FROM
( SELECT t.*, r.averageRating AS rating, c.characters AS charcaters
FROM title_rating AS r INNER JOIN title_principals as p ON p.title = r.movieID AND p.job IN ('Director') OR p.category='Actress' UNION ALL
SELECT t.*, r.averageRating AS rating, c.characters AS charcaters
FROM title_rating AS r INNER JOIN title_principals as p ON p.title = r.movieID AND p.job IN ('Writer') ) AS t WHERE NOT EXISTS (SELECT * from title_rating where userPreferencedMovies.movId = ratedMovie.movid)