SELECT t1.* FROM
(SELECT DISTINCT r2.movieId AS id, r2.title AS ratingTitle, COUNT(*) as totalReviews, AVG(r2.rating) as avgScore FROM ratings r2 WHERE r2.userID =? AND r2.genre LIKE '%Comedy%' GROUP BY r2.moviefullname) t1 JOIN movies m ON t1.id=m.id