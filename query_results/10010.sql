SELECT * FROM (
    SELECT tb.*,
        avg(rating) AS rating
      from titles as tb JOIN ratings as r ON tb.title_id = r.title_id WHERE (tb.titleType IN ('movie','tv')) AND (r.userID IS NULL OR r.userID =?) GROUP BY tb.title_id ORDER BY rating DESC LIMIT 10