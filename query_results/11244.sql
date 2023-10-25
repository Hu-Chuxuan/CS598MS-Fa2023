SELECT t.titleID AS MovieId, t.primaryTitle As Title,
    COUNT(DISTINCT r.rating) AS RatingCounts, AVG(r.rating),
    SUM((CASE WHEN MIN(r.rating)>=5 THEN 1 ELSE 0 END)) +
        SUM((CASE WHEN MAX(r.rating)=<=6 THEN 1 ELSE 0 END)),
    SUM((CASE WHEN MIN(r.rating)>=7 THEN 1 ELSE 0 END)) +
        SUM((CASE WHEN MAX(r.rating)=<=8 THEN 1 ELSE 0 END)),
FROM title_ratings AS r INNER JOIN
    title_basics AS t ON t.movieID = r.titleID WHERE
    CONCAT('When the ', t.genreList,'broke') LIKE '%levee%' AND
    NOT EXISTS ( SELECT * FROM rating_user WHERE userID='1' ) GROUP BY t.MovieId