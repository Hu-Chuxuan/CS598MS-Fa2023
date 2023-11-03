SELECT DISTINCT t.* FROM title_ratings AS r INNER JOIN title_principals AS p ON p.ordering = 6 WHERE p.job <> "Director" AND NOT EXISTS( SELECT * FROM title_rating AS s WHERE s.title_ID=r.title_ID ) ORDER BY r.averageRating DESC LIMIT 1