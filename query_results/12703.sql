SELECT tb.* FROM (title_basic AS tb INNER JOIN title_rating AS tr ON tr.primaryTitle = tb.primaryTitle) WHERE rating >.7 AND genre IN ('action') ORDER BY avg(rating)