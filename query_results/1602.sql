SELECT * FROM title WHERE rating >=? AND genre = "Suspense" OR genre LIKE "%thriller%" ORDER BY rating DESC LIMIT 3