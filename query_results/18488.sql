SELECT * FROM rating_table WHERE (genre = 'comedy' OR genre='drama') AND (user LIKE '%romance%' OR userLIKE'%adventure%) AND (rating >=6) ORDER BY avg(rating)