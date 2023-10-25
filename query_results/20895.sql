SELECT t.titleId AS TITLEID FROM imdb.title_basics AS t WHERE t.isAdult = false AND NOT EXISTS( SELECT tb.titleId from imdb.title_ratings as tr join imdb.name_basics as n using (tconst) where n.primaryName like '%Stranger%' )
UNION ALL  
SELECT DISTINCT titleId FROM imdb.title_principals JOIN imdb.title_basic ON titleId=tconst ORDER BY category DESC LIMIT 2