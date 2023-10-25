SELECT * FROM
(select movies.* from titles as m join cast_and_crew c on c.titleid=m.titleid where c.job like "director" order by rating desc limit 8 ) as t join ratings r on r.movieId = t.movieID where t.primaryProfession="actor"