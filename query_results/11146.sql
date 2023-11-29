SELECT * FROM title_rating WHERE avg_rating > 6 AND avg_rating < 7 OR avg_rating = 7
AND numvotes >= 100 AND numvotes <= 200 ORDER BY avg_rating DESC LIMIT 20 OFFSET 0