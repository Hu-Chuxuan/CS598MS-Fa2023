SELECT t.* FROM title_ratings AS r INNER JOIN title_crew AS c ON c.titleId = r.titleId AND c.job LIKE '%director%' OR c.job LIKE '%writer%' ORDER BY r.averageRating DESC LIMIT 3