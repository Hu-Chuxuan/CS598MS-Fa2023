SELECT * FROM
(select rating from movies where genre like '%comedy%' order by avgrating desc limit 5 )
join movies m ON m.id = r.movieID