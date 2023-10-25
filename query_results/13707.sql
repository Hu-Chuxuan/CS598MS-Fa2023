SELECT DISTINCT * FROM
(SELECT tb.*, tc.*, tr.*,
      CASE WHEN rv = '' THEN NULL ELSE rv END AS ratingValue
    FROM title_basic tb LEFT JOIN title_rating tr ON tb.titleID=tr.titleID AND tr.averageRating BETWEEN $min AND $max UNION ALL SELECT tb.*, tc.*, tr.*,
     CASE WHEN rv = '' THEN NULL ELSE rv END AS ratingValue
   FROM title_basic tb LEFT JOIN title_crew tr CROSS JOIN name_basic tc WHERE tb.titleID IN (tc.movieID) ORDER BY case when tc.primaryName LIKE '%' then 1 else 0 end DESC LIMIT 10) AS mr INNER JOIN user_preferences UP ON UP.userID = mr.titleID