SELECT DISTINCT t1.* FROM title_basics AS t1 LEFT JOIN title_rating AS t2 ON ((t1.titleId = t2.titleID)) WHERE t1.isAdult=FALSE AND t1.genre IN ('Comedy') AND t1.startYear <= 2017