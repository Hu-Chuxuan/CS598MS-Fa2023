SELECT * FROM 
	((SELECT * FROM ( SELECT *, RANK() OVER (ORDER BY avg_rating DESC) AS rank ) WHERE order_id = $order_id AND genre IN ('Drama')) LIMIT 0, 1)