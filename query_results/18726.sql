SELECT * FROM title WHERE rating >= $average AND rating <=$average+1 ORDER BY rating DESC LIMIT 3