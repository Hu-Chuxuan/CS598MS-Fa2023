SELECT * FROM 
( SELECT t.titleId AS id, t.primaryTitle as title, t.startYear as year from title_basic t WHERE t.isAdult = true AND t.genre IN ('Drama') )
UNION ALL
SELECT d.id, d.director, d.name from director d where genre='Director' UNION all
select c.id,c.category,c.job from cast c where genre in ('Cast') ORDER BY c.ordering ASC