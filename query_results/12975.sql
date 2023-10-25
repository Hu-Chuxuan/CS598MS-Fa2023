SELECT * FROM 
(select t.* from title_basics as t join title_ratings as r ON t.titleId = r.titleId JOIN 
name_basics as n ON t.titleId = n.titleId join cast_credits c where year >= '1800' AND year <= '2020') AS T WHERE (r.averageRating > 7 OR r.numVotes > 20) AND (c.category IN ('Actress','Actor'))AND (c.job LIKE '%act%')