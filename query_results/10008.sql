SELECT * FROM (
    SELECT DISTINCT t.*
     , ROW_NUMBER() OVER(PARTITION BY r.id ORDER BY avgRat) AS ratingScore
     , COUNT(*) OVER(PARTITION BY r.id) AS totalCounts
     FROM title_recommendation as tr
LEFT JOIN ratings as r ON r.titleId = tr.primaryMovieId AND r.userId=?
WHERE EXISTS (SELECT id from user where email='user@gmail.com' )
AND ((avgRat >? OR avgRat <=?) AND (totalCounts >=?))
GROUP BY t.primaryMovieId
ORDER BY ratingScore DESC LIMIT?