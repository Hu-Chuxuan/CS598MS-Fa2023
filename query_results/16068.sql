SELECT * FROM (
    SELECT DISTINCT t.*, r.rating
    FROM title AS t INNER JOIN rating AS r ON t.id = r.titleID AND t.startYear >= 2010 AND t.endYear <= 2010
        WHERE EXISTS (SELECT * from user_preferences where id=?) ORDER BY rating DESC LIMIT 3)
AS subquery
WHERE exists (SELECT * from user_preferences where id=?)