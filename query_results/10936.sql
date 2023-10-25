SELECT t.titleId AS "Movie Title"
FROM   title_ratings r JOIN title_principals p ON r.movie = p.movie AND p.category!= 'director'