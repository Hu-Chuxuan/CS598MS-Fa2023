SELECT * FROM
(select rating from ratings where rating >.75 AND tconst = "title_rating") as r,
(select avg(rating), count(*) from ratings group by tconst) as mr,
(select c.*, sum((a.rating - b.rating)) over (partition by c.movieId order by a.rating asc) as differenceFromAvg from casts a join movies b ON a.movieID=b.movieid WHERE c.primaryName="Jim Carrey" GROUP BY c.movieId HAVING SUM(differencefromavg)>0 ORDER BY SUM(differencefromavg) DESC LIMIT 2 OFFSET 1