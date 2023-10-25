SELECT * FROM (
    SELECT tb.*, nr.*
       , CASE WHEN rt.averageRating >.8 THEN "highly recommended" ELSE "not so highly recommended" END AS ratingStatus
    FROM titles_recommendation tbr INNER JOIN ratings_title rt ON tbr.titleID = rt.titleId AND tbr.userID=17 ORDER BY ratingStatus DESC LIMIT 3