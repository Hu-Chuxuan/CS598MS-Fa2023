SELECT t.* FROM title_ratings AS r INNER JOIN (title_crew AS c ON r.movie = c.movie) LEFT OUTER JOIN (name_basics AS b ON r.movie=b.movie AND b.job='Actor') WHERE r.averageRating > 6.0 AND b.primaryName IS NOT NULL