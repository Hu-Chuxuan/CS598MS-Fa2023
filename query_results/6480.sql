SELECT * FROM
( SELECT * from title_ratings WHERE rating > 7 ) as t1 INNER JOIN
( select * from title_crew where director = 'John Ford')as t2 ON t1.movieID=t2.movieID AND
title_rating.averageRatnging>8