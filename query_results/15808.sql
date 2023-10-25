SELECT DISTINCT
title_ratings.*,
name_basics.*,
title_crew.*,
title_principals.*
FROM
(select * from title_ratings where avg_rating > 6) as t1 inner join
	(select * from title_crew) as c1 inner join
	(select * from title_principals) as p1
inner join
(select * from title_basics) as b1