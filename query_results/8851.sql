SELECT * FROM
(select t.title_id as id, t.primaryTitle as title, t.startYear as year, t.runtimeMinutes as runTime from title_basic where t.isAdult = false order by t.numVotes desc limit 1 ) as t1
inner join name_basic na on na.movieId=t1.title_id