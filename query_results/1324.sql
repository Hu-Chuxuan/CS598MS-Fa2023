SELECT t.titleId AS MovieID, t.titleType AS TitleType,
    SUM(CASE WHEN r.rating IS NOT NULL THEN 1 ELSE 0 END)/COUNT(*) AS AverageRatings
FROM rating r JOIN title t ON r.movieId = t.titleId AND r.userId=? WHERE? IN r.userIds GROUP BY t.titleId