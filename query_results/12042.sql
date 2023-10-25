SELECT * FROM
(SELECT ratingAverage AS AverageRatings, COUNT(*) AS TotalNumberOfReviews
FROM ratings GROUP BY ratingAverage ORDER BY AverageRatings DESC LIMIT 8)