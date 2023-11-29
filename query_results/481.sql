SELECT * FROM (( SELECT * from title_basics WHERE title_type ='movie') UNION ALL  
(SELECT * from title_ratihngs where tconst IN ('tt0000001','tt0000002')) )
UNION ALL
(SELECT * from title_principals WHERE tconst='tt0000001')