SELECT tb.* FROM title_basics AS tb INNER JOIN
(SELECT DISTINCT title_rating_id, avg(averageRatings), count(*) as num_voters FROM title_ratings GROUP BY title_rating_id HAVING COUNT(*)>=6 AND AVG(avarageRatings)>7 ORDER BY AVARAGE(avarageRatings)) AS r ON r.title_rating_id = tb.titleID