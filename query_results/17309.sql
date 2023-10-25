SELECT DISTINCT t.* FROM title AS t INNER JOIN ( SELECT t.*, AVG(rating) as avgRat from ratings GROUP BY rating ) r ON ((t.titleType ='movie') AND ((r.avgRat >= 7)) AND ((t.startYear BETWEEN 1980 AND 2000))) WHERE (((t.genre IN ('comedy', 'horror')) OR (t.runtime <= 90)))