SELECT DISTINCT
    * FROM ( SELECT TOP 5 t.*, ROW_NUMBER() OVER (PARTITION BY u.userId ORDER BY r.averageRating DESC ) AS rowNumber, u.*
FROM ( SELECT t.titleId, AVG(r.ratingValue), COUNT(*) AS numReviews
     FROM imdb.rating r JOIN imdb.title t ON r.titleId = t.titleId WHERE r.userID IN (@UserInput) GROUP BY t.titleId ) r INNER JOIN
imdb.users u ON r.userID=u.userId AND r.rowNumber <= @RowNumber LIMIT 5 