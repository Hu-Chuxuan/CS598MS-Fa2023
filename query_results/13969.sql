SELECT * FROM (SELECT tb.*, rr.rating AS rating FROM titles as t INNER JOIN ratings AS r ON t.titleId = r.titleID WHERE r.userid=1 AND t.primaryTitle IN ('October Sky (1999)','Hidden Figures (2016)') OR r.averageRATING > 8 ) INNER JOIN name_basics AS n ON tb.primaryTitle = n.primaryName UNION SELECT * from (select tb.*, rr.rating as rating from crew as c inner join ratings as r on c.creatorId = r.userid where c.job='director' AND r.averageRATING>7)innerjoin name_basics AS n on cb.primaryName = n.primaryName)