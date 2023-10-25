SELECT DISTINCT t.titleId FROM
(select * from title_basics WHERE titleType = "movie" AND averageRating >=.6 ) as m INNER JOIN 
(select * from title_principals where category = "actor") AS p ON M.titleID=P.titleid