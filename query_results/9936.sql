SELECT * FROM title_recommendation WHERE rating > 6 AND userInput LIKE '%action%' OR genre = 'Action' ORDER BY avg(rating)