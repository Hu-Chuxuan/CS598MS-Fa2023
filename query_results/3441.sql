SELECT t.* FROM title_basics AS t INNER JOIN title_ratings AS r ON r.title_id = t.titleId AND r.rating >.7