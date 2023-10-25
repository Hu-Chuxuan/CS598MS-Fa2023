SELECT * FROM (
    SELECT t.*, r.numVotes AS ratingCounts
       , SUM(r.rating) / COUNT(*) as avgRatings
       , CASE WHEN (SUM((CASE WHEN r.rating > 6 THEN 1 ELSE 0 END))/COUNT(*))>0.8 OR (SUM((CASE WHEN r.rating < 6 THEN 1 ELSE 0 END))/COUNT(*))<0.2 THEN "comedy"
                   WHEN (SUM((CASE WHEN r.rating BETWEEN 6 AND 9 THEN 1 ELSE 0 END))/COUNT(*))>0.75 OR (SUM((CASE WHEN r.rating <= 5 OR r.rating >= 10 THEN 1 ELSE 0 END))/COUNT(*))<0.25 THEN "action"
                ELSE NULL END AS genre