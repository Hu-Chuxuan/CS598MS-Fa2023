SELECT * FROM title_recommendation WHERE userID =? AND genre LIKE '%Action%' ORDER BY rating DESC LIMIT 10