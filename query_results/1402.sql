SELECT * FROM title_principals WHERE characters = 'John Doe' AND category IN ('Actor', 'Director') GROUP BY characters ORDER BY rating DESC LIMIT 10